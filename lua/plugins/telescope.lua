return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "v0.2.0",
		keys = {
			{ "<leader>sf", "<cmd>Telescope find_files<cr>" },
			{ "<leader>sg", "<cmd>Telescope live_grep<cr>" },
		},
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
