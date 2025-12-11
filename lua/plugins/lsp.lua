return {
	{
		"mason-org/mason.nvim",
		dependencies = {
			"mason-org/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"artemave/workspace-diagnostics.nvim",
		},
		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				},
				ts_ls = {
					on_attach = function(client, bufnr)
						require("workspace-diagnostics").populate_workspace_diagnostics(client, 0)
					end,
				},
				biome = {},
				tailwindcss = {},
			},
		},
		config = function(_, opts)
			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = { "ts_ls", "biome", "lua_ls" },
			})

			for server, config in pairs(opts.servers) do
				vim.lsp.config(server, config)
				vim.lsp.enable(server)
			end
		end,
	},
}
