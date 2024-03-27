return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local latte = require("catppuccin.palettes").get_palette("latte")
		local frappe = require("catppuccin.palettes").get_palette("frappe")
		local macchiato = require("catppuccin.palettes").get_palette("macchiato")
		local mocha = require("catppuccin.palettes").get_palette("mocha")

		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				alpha = true,
				cmp = true,
				nvimtree = true,
				treesitter = true,
			},
			customizations = function() -- not a catppuccin function
				-- vim diagnostics
				vim.diagnostic.config({
					virtual_text = {
						prefix = "🦊",
					},
				})

				-- vim signs
				vim.api.nvim_set_hl(0, "DapBreakpointText", { ctermbg = 0, fg = mocha.red, bg = nil })
				vim.api.nvim_set_hl(0, "DapBreakpointLine", { ctermbg = 0, fg = nil, bg = nil })
				vim.api.nvim_set_hl(0, "DapBreakpointNum", { ctermbg = 0, fg = nil, bg = nil })
				vim.fn.sign_define("DapBreakpoint", {
					text = "",
					texthl = "DapBreakpointText",
					linehl = "DapBreakpointLine",
					numhl = "DapBreakpointNum",
				})

				vim.api.nvim_set_hl(0, "DapStoppedText", { ctermbg = 0, fg = mocha.green , bg = nil })
				vim.api.nvim_set_hl(0, "DapStoppedLine", { ctermbg = 0, fg = nil, bg = mocha.mantle })
				vim.api.nvim_set_hl(0, "DapStoppedNum", { ctermbg = 0, fg = nil, bg = nil })
				vim.fn.sign_define("DapStopped", {
					text = "",
					texthl = "DapStoppedText",
					linehl = "DapStoppedLine",
					numhl = "DapStoppedNum",
				})

				vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "", linehl = "", numhl = "", })
				vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "", linehl = "", numhl = "", })
				vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "", linehl = "", numhl = "", })
				vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "", linehl = "", numhl = "", })
			end,

			custom_highlights = function() -- change highlights here
				return {

					-- scrollbar
					-- ScrollbarHandle = { bg = colors.mantle },
					-- ScrollbarCursorHandle = { bg = colors.mantle },
					-- ScrollbarSearchHandle = { bg = colors.mantle },
					-- ScrollbarErrorHandle = { bg = colors.mantle },
					-- ScrollbarWarnHandle = { bg = colors.mantle },
					-- ScrollbarInfoHandle = { bg = colors.mantle },
					-- ScrollbarHintHandle = { bg = colors.mantle },
					-- ScrollbarMiscHandle = { bg = colors.mantle },
					-- ScrollbarGitAddHandle = { bg = colors.mantle },
					-- ScrollbarGitChangeHandle = { bg = colors.mantle },
					-- ScrollbarGitDeleteHandle = { bg = colors.mantle },
					--
					-- ScrollbarCursor = { fg = colors.white },
					-- ScrollbarSearch = { fg = colors.blue },
					-- ScrollbarError = { fg = colors.red },
					-- ScrollbarWarn = { fg = colors.yellow },
					-- ScrollbarInfo = { fg = colors.red },
					-- ScrollbarHint = { fg = colors.red },
					-- ScrollbarMisc = { fg = colors.red },
					-- ScrollbarGitAdd = { fg = colors.green },
					-- ScrollbarGitChange = { fg = colors.yellow },
					-- ScrollbarGitDelete = { fg = colors.pink },
					--
					-- neotree
					-- NeoTreeGitIgnored = { fg = mocha.blue },
					-- NeoTreeDotfile = { fg = mocha.blue },
				}
			end,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}

-- require("catppuccin").setup()
-- (is called automatically)
