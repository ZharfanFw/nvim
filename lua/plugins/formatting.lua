return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "biome", "prettierd", "prettier", stop_after_first = true },
					javascriptreact = { "biome", "prettierd", "prettier", stop_after_first = true },
					typescript = { "biome", stop_after_first = true },
					typescriptreact = { "biome", stop_after_first = true },
					json = { "biome", "prettierd", "prettier", stop_after_first = true },
					graphql = { "prettierd", "prettier", stop_after_first = true },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
}
