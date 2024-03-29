return {
	"NvChad/nvim-colorizer.lua",
	config = function()
	local opts = { noremap = true, silent = true }
		local colorizer = require("colorizer").setup({
			user_default_options = { mode = "background" } -- virtualtext
		})
		vim.keymap.set("n", "<leader>tc", "<Cmd>ColorizerToggle<CR>", opts)
	end,
}
