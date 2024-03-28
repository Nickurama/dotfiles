return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup()

		-- keybinds
		local opts = { noremap = true, silent = true }
		vim.api.nvim_set_keymap('n', '<C-t>s', '<Cmd>ToggleTerm<CR>', opts)
		vim.api.nvim_set_keymap('n', '<C-t>v', '<Cmd>ToggleTerm size=40 direction=vertical<CR>', opts)
		vim.api.nvim_set_keymap('n', '<C-t>c', '<Cmd>bd!<CR>', opts)
	end
}
