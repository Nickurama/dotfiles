return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		--require("nvim-treesitter.install").compilers = { "clang" }
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua",
				"java",
				"python",
				"javascript",
				"typescript",
				"cpp",
				"c",
				"bash",
				"markdown",
				"vim",
				"vimdoc",
				"latex",
				"comment"
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = false },
		})
	end
}
