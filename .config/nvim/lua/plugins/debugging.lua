return {
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

		--[[dap.configurations.java = {
			{
				-- You need to extend the classPath to list your dependencies.
				-- `nvim-jdtls` would automatically add the `classPaths` property if it is missing
				classPaths = {},

				-- If using multi-module projects, remove otherwise.
				--projectName = "yourProjectName",

				javaExec = "/path/to/your/bin/java",
				mainClass = "your.package.name.MainClassName",

				-- If using the JDK9+ module system, this needs to be extended
				-- `nvim-jdtls` would automatically populate this property
				modulePaths = {},
				name = "Launch YourClassName",
				request = "launch",
				type = "java",
			},
		}]]
		--
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

		vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<Leader>dc", dap.continue, {})
		vim.keymap.set("n", "<Leader>ds", dap.step_over, {})
		vim.keymap.set("n", "<Leader>di", dap.step_into, {})
	end,
}
