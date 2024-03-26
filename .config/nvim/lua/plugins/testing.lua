return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		
		"rcasia/neotest-java",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				--[[
				require("neotest-python")({
					dap = { justMyCode = false },
				}),
				require("neotest-plenary"),
				require("neotest-vim-test")({
					ignore_file_types = { "python", "vim", "lua" },
				}),
				]]--
				require("neotest-java")({
					ignore_wrapper = true,
				})
			},
		})
	end,
}
