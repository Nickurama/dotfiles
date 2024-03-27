return {
	"petertriho/nvim-scrollbar",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"kevinhwang91/nvim-hlslens",
	},
	config = function()
		-- dependencies
		--require("plugins.config.hlslens").config() -- shouldn't be called here
		require("plugins.config.git-signs").config()

		-- plugin
		require("plugins.config.scrollbar").config()
	end
}
