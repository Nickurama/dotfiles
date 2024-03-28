return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 1000
	end,
	opts = function()
		require("which-key").setup({
			plugins = {
				presets = {
					operators = false,
					motions = false,
					text_objects = true,
					nav = true,
					z = true,
					g = true,
					windows = true,
				},
			},
			motions = {
				count = false,
			},
		})

		local wk = require("which-key")
		wk.register({
			t = {
				name = "Toggle",
				c = { "Colorizer" }
			},
			["/"] = { "Comment" },
			d = {
				name = "Debug",
				b = { "Breakpoint" },
				c = { "Continue/Start" },
				s = { "Step over" },
				i = { "Step into" },
				t = { "Terminate" },
				u = { "User interface" },
				k = { "Hover eval" },
			},
			g = {
				name = "Go",
				d = { "Definition" },
				f = { "Global Format" },
				b = { "Git blame" },
				B = { "Git blame (full)" },
			},
			r = {
				name = "Rename",
				a = { "Rename" },
			},
			y = { "Yank clipboard" },
			Y = { "Yank line clipboard"},
			p = { "Paste clipboard" },
			P = { "Paste clipboard" },
			s = {
				name = "Show",
				d = { "Diagnostics" },
				["/"] = { "Stop searching" },
			},
			f = {
				name = "Find",
				g = { "Grep" },
			},
			c = {
				name = "Code",
				a = { "Actions" },
			},
		}, { prefix = "<leader>" } )

		wk.register({
			s = { "Horizontal terminal" },
			v = { "Vertical terminal" },
			c = { "Close terminal" },
		}, { prefix = "<C-t>" } )

		wk.register({
			["<C-n>"] = { "Open navigator" },
			["<C-k>"] = { "Change window up" },
			["<C-j>"] = { "Change window down" },
			["<C-h>"] = { "Change window left" },
			["<C-l>"] = { "Change window right" },
			["<C-p>"] = { "Find file" },
			["<A-o>"] = { "New buffer" },
			["<Tab>"] = { "Indent one" },
			["<S-Tab>"] = { "Unindent one" },
			-- hide
			["<CR>"] = "which_key_ignore",
		}, { prefix = "" })

		wk.register()
	end,
}
