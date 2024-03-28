local M = {}

function M.setKeybinds()
	local opts = { noremap = true, silent = true }
	return {
		-- go to buffer position
		vim.api.nvim_set_keymap('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-5>', '<Cmd>BufferGoto 5<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-6>', '<Cmd>BufferGoto 6<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-7>', '<Cmd>BufferGoto 7<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-8>', '<Cmd>BufferGoto 8<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-9>', '<Cmd>BufferGoto 9<CR>', opts),
		vim.api.nvim_set_keymap('n', '<C-0>', '<Cmd>BufferLast<CR>', opts),

		-- pin/unpin buffer
		vim.api.nvim_set_keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts),

		-- close buffer
		vim.api.nvim_set_keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts),
	}
end

return M
