return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "lua", "html", "css", "javascript", "typescript" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				auto_install = true,
			})
		end,
	},
}
