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
			-- motions = {
			-- 	count = false,
			-- },
		})

		local wk = require("which-key")
		wk.add({
			{ "<leader>/", desc = "Comment" },
			{ "<leader>P", desc = "Paste clipboard" },
			{ "<leader>Y", desc = "Yank line clipboard" },
			{ "<leader>c", group = "Code" },
			{ "<leader>ca", desc = "Actions" },
			{ "<leader>d", group = "Debug" },
			{ "<leader>db", desc = "Breakpoint" },
			{ "<leader>dc", desc = "Continue/Start" },
			{ "<leader>di", desc = "Step into" },
			{ "<leader>dk", desc = "Hover eval" },
			{ "<leader>ds", desc = "Step over" },
			{ "<leader>dt", desc = "Terminate" },
			{ "<leader>du", desc = "User interface" },
			{ "<leader>f", group = "Find" },
			{ "<leader>fg", desc = "Grep" },
			{ "<leader>g", group = "Go" },
			{ "<leader>gB", desc = "Git blame (full)" },
			{ "<leader>gb", desc = "Git blame" },
			{ "<leader>gd", desc = "Definition" },
			{ "<leader>gf", desc = "Global Format" },
			{ "<leader>p", desc = "Paste clipboard" },
			{ "<leader>r", group = "Rename" },
			{ "<leader>ra", desc = "Rename" },
			{ "<leader>s", group = "Show" },
			{ "<leader>s/", desc = "Stop searching" },
			{ "<leader>sd", desc = "Diagnostics" },
			{ "<leader>t", group = "Toggle" },
			{ "<leader>tc", desc = "Colorizer" },
			{ "<leader>y", desc = "Yank clipboard" },
			{ "<leader>db", desc = "Comment" },
		})

		wk.add({
			{ "<C-t>c", desc = "Close terminal" },
			{ "<C-t>s", desc = "Horizontal terminal" },
			{ "<C-t>v", desc = "Vertical terminal" },
		})

		wk.add({
			{ "<A-o>", desc = "New buffer" },
			{ "<C-h>", desc = "Change window left" },
			{ "<C-j>", desc = "Change window down" },
			{ "<C-k>", desc = "Change window up" },
			{ "<C-l>", desc = "Change window right" },
			{ "<C-n>", desc = "Open navigator" },
			{ "<C-p>", desc = "Find file" },
			{ "<CR>", hidden = true },
			{ "<S-Tab>", desc = "Unindent one" },
			{ "<Tab>", desc = "Indent one" },
		})

		-- 	t = {
		-- 		name = "Toggle",
		-- 		c = { "Colorizer" }
		-- 	},
		-- 	["/"] = { "Comment" },
		-- 	d = {
		-- 		name = "Debug",
		-- 		b = { "Breakpoint" },
		-- 		c = { "Continue/Start" },
		-- 		s = { "Step over" },
		-- 		i = { "Step into" },
		-- 		t = { "Terminate" },
		-- 		u = { "User interface" },
		-- 		k = { "Hover eval" },
		-- 	},
		-- 	g = {
		-- 		name = "Go",
		-- 		d = { "Definition" },
		-- 		f = { "Global Format" },
		-- 		b = { "Git blame" },
		-- 		B = { "Git blame (full)" },
		-- 	},
		-- 	r = {
		-- 		name = "Rename",
		-- 		a = { "Rename" },
		-- 	},
		-- 	y = { "Yank clipboard" },
		-- 	Y = { "Yank line clipboard"},
		-- 	p = { "Paste clipboard" },
		-- 	P = { "Paste clipboard" },
		-- 	s = {
		-- 		name = "Show",
		-- 		d = { "Diagnostics" },
		-- 		["/"] = { "Stop searching" },
		-- 	},
		-- 	f = {
		-- 		name = "Find",
		-- 		g = { "Grep" },
		-- 	},
		-- 	c = {
		-- 		name = "Code",
		-- 		a = { "Actions" },
		-- 	},
		-- }, { prefix = "<leader>" } )
		--
		-- wk.register({
		-- 	s = { "Horizontal terminal" },
		-- 	v = { "Vertical terminal" },
		-- 	c = { "Close terminal" },
		-- }, { prefix = "<C-t>" } )
		--
		-- wk.register({
		-- 	["<C-n>"] = { "Open navigator" },
		-- 	["<C-k>"] = { "Change window up" },
		-- 	["<C-j>"] = { "Change window down" },
		-- 	["<C-h>"] = { "Change window left" },
		-- 	["<C-l>"] = { "Change window right" },
		-- 	["<C-p>"] = { "Find file" },
		-- 	["<A-o>"] = { "New buffer" },
		-- 	["<Tab>"] = { "Indent one" },
		-- 	["<S-Tab>"] = { "Unindent one" },
		-- 	-- hide
		-- 	["<CR>"] = "which_key_ignore",
		-- }, { prefix = "" })
		--
		-- wk.register()
	end,
}
