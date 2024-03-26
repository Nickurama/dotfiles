return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		local latte = require("catppuccin.palettes").get_palette "latte"
		local frappe = require("catppuccin.palettes").get_palette "frappe"
		local macchiato = require("catppuccin.palettes").get_palette "macchiato"
		local mocha = require("catppuccin.palettes").get_palette("mocha")

		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				alpha = true,
				cmp = true,
				nvimtree = true,
				treesitter = true,
			},
			custom_highlights = function()
				return {
					--NeoTreeGitIgnored = { fg = mocha.blue },
					--NeoTreeDotfile = { fg = mocha.blue },
				}
			end,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}

-- require("catppuccin").setup()
-- (is called automatically)
