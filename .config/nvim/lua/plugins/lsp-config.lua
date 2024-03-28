return {
	-- {
	-- 	-- must be setup before lspconfig
	-- 	"folke/neodev.nvim",
	-- 	opts = {},
	-- 	config = function ()
	-- 		require("neodev").setup()
	-- 	end
	-- },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				PATH = "prepend"
			})
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "jdtls", "pyright", "bashls", },
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities() -- for cmp_nvim_lsp completions

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities
			})

			-- keymaps
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true })
			vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { noremap = true})
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap = true })
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, { noremap = true })
		end
	},
}
