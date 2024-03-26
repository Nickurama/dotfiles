return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local file_name = "boykisser.lua"
		local art = dofile(vim.fn.stdpath("config") .. "/lua/plugins/alpha_art/" .. file_name)

		art.draw(dashboard)
		alpha.setup(dashboard.config)
	end,
}
