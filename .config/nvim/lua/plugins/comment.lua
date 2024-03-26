return {
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require("Comment").setup({
			opleader = { line = '<leader>/' },
		})
		local api = require("Comment.api")
        vim.keymap.set('n', '<leader>/', api.toggle.linewise.current)
		--vim.keymap.set('v', '<leader>/', 'gc')
	end
}
