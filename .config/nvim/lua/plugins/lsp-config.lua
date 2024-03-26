return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "jdtls", "pyright", "tsserver", "bashls", "bashls", },
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities() -- for cmp_nvim_lsp completions

			local lspconfig = require("lspconfig")--.setup({})
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			--lspconfig.jdtls.setup({})
			lspconfig.pyright.setup({
				capabilities = capabilities
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities
			})
			lspconfig.bashls.setup({
				capabilities = capabilities
			})
			--[[ lspconfig.java_language_server.setup({
				cmd = { "java-language-server" },
				handlers = {
					['client/registerCapability'] = function(err, result, ctx, config)
						local registration = {
							registrations = { result },
						}
						return vim.lsp.handlers['client/registerCapability'](err, registration, ctx, config)
					end
				},
			}) ]]--

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	},
}
