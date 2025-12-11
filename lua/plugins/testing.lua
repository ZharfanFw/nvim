return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"arthur944/neotest-bun",
		},
		keys = {
			{ "<leader>tr", "<cmd>Neotest run<cr>" },
			{ "<leader>ti", "<cmd>Neotest output<cr>" },
			{ "<leader>ts", "<cmd>Neotest summary<cr>" },
			{ "<leader>ta", "<cmd>lua require('neotest').run.run({ suite = true })<cr>" },
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-bun"),
				},
			})
		end,
	},
}
