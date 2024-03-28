return {
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require("Comment").setup({
			opleader = { line = "<leader>/" },
			mappings = {
				---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
				basic = false,
				---Extra mapping; `gco`, `gcO`, `gcA`
				extra = false,
			},
		})
		local api = require("Comment.api")
		vim.keymap.set("n", "<leader>/", api.toggle.linewise.current, { noremap = true })
		----vim.keymap.set('v', '<leader>/', 'gc')
	end,
}
