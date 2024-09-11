local opts = { silent = true }

return {
	"nvim-tree/nvim-tree.lua",
		vim.keymap.set("n", "<C-n>", "<Cmd>NvimTreeOpen<CR>", opts ),
	config = function()
		require("nvim-tree").setup({
			reload_on_bufenter = true,
			respect_buf_cwd = true,
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				signcolumn = "yes",
				width = 30,
			},
			renderer = {
				highlight_git = "name",
				highlight_diagnostics = "name",
				highlight_modified = "name",
				indent_markers = {
					enable = false,
				},
				group_empty = false,
				icons = {
					git_placement = "after",
					diagnostics_placement = "after",
					modified_placement = "signcolumn",
					show = {
						git = false,
						modified = true;
						diagnostics = true;
					},
					glyphs = {

					},
				},
			},
			filters = {
				dotfiles = true,
				git_ignored = false,
			},
			git = {
				enable = true;
			},
			diagnostics = {
				enable = true,
				severity = {
					min = vim.diagnostic.severity.ERROR,
					max = vim.diagnostic.severity.ERROR,
				},
			},
			modified = {
				enable = true,
			},
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
			notify = {
				threshold = vim.log.levels.WARNING,
			},
		})
	end,
}
