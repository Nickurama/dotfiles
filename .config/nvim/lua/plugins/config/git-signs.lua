local M = {}

function M.config()
	return {
			require("gitsigns").setup({
				on_attach = function(bufnr)
					-- keymaps
					local gs = package.loaded.gitsigns
					local function map(mode, l, r, opts)
						opts = opts or {}
						opts.buffer = bufnr
						vim.keymap.set(mode, l, r, opts)
					end

					-- Navigation
					map("n", "]c", function()
						if vim.wo.diff then
							return "]c"
						end
						vim.schedule(function()
							gs.next_hunk()
						end)
						return "<Ignore>"
					end, { expr = true })

					map("n", "[c", function()
						if vim.wo.diff then
							return "[c"
						end
						vim.schedule(function()
							gs.prev_hunk()
						end)
						return "<Ignore>"
					end, { expr = true })

					map("n", "<leader>gb", gs.toggle_current_line_blame)
					map("n", "<leader>gB", function()
						gs.blame_line({ full = true })
					end)
				end,
			})
	}
end

return M
