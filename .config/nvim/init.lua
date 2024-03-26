local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
    	'nvim-telescope/telescope.nvim', tag = '0.1.6',
    	dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
    	"nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
    	dependencies =
		{
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons",
      		"MunifTanjim/nui.nvim",
    	}
	}
}

require("vim-options")
require("lazy").setup("plugins")
