return {
	{
		"theHamsta/nvim-dap-virtual-text",
		config = function()
			require("nvim-dap-virtual-text").setup()
		end
	},
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"microsoft/java-debug",
			"rcarriga/cmp-dap",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			-- DAPs setup
			local vscode_cpptools_path = require("mason-registry").get_package("cpptools"):get_install_path()
			local cpptools_path = vscode_cpptools_path .. "/extension/debugAdapters/bin/OpenDebugAD7"
			dap.adapters.cppdbg = {
				id = "cppdbg",
				type = "executable",
				command = cpptools_path,
			}

			local mason_debugpy_path = require("mason-registry").get_package("debugpy"):get_install_path()
			local debugpy_path = mason_debugpy_path .. "/venv/bin/python"
			dap.adapters.python = function(cb, config)
				if config.request == "attach" then
					---@diagnostic disable-next-line: undefined-field
					local port = (config.connect or config).port
					---@diagnostic disable-next-line: undefined-field
					local host = (config.connect or config).host or "127.0.0.1"
					cb({
						type = "server",
						port = assert(port, "`connect.port` is required for a python `attach` configuration"),
						host = host,
						options = {
							source_filetype = "python",
						},
					})
				else
					cb({
						type = "executable",
						command = debugpy_path,
						args = { "-m", "debugpy.adapter" },
						options = {
							source_filetype = "python",
						},
					})
				end
			end

			-- DAPs config
			dap.configurations.cpp = {
				{
					name = "[ccpdbg] Launch file",
					type = "cppdbg",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = true,
				},
			}
			dap.configurations.c = dap.configurations.cpp
			dap.configurations.rust = dap.configurations.cpp

			dap.configurations.python = {
				{
					type = "python",
					request = "launch",
					name = "Launch file",

					--debugpy opts
					program = "${file}", -- This configuration will launch the current file if used.
					pythonPath = function()
						local cwd = vim.fn.getcwd()
						-- should return python executable path
						if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
							return cwd .. "/venv/bin/python"
						elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
							return cwd .. "/.venv/bin/python"
						elseif vim.fn.executable("python3") == 1 then -- using python3 PATH variable
							return "python3"
						else
							return "python"
						end
					end,
				},
			}

			-- automatic dapui
			dapui.setup({})

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			-- keybinds
			vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<Leader>dc", dap.continue, {})
			vim.keymap.set("n", "<Leader>ds", dap.step_over, {})
			vim.keymap.set("n", "<Leader>di", dap.step_into, {})
			vim.keymap.set("n", "<Leader>dt", dap.terminate, {})

			vim.keymap.set("n", "<Leader>du", dapui.toggle, {})
			vim.keymap.set({ "n", "v" }, "<Leader>dk", dapui.eval, {})
		end,
	},
}
