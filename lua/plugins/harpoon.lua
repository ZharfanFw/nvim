return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		-- Keybindings
		local opts = { noremap = true, silent = true }

		-- Mark current file
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, opts)

		-- Quick menu to see all marked files
		vim.keymap.set("n", "<leader>hm", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, opts)

		-- Jump to specific marked files (1-4)
		vim.keymap.set("n", "<leader>h1", function()
			harpoon:list():select(1)
		end, opts)

		vim.keymap.set("n", "<leader>h2", function()
			harpoon:list():select(2)
		end, opts)

		vim.keymap.set("n", "<leader>h3", function()
			harpoon:list():select(3)
		end, opts)

		vim.keymap.set("n", "<leader>h4", function()
			harpoon:list():select(4)
		end, opts)

		-- Navigate through marked files
		vim.keymap.set("n", "<leader>hn", function()
			harpoon:list():next()
		end, opts)

		vim.keymap.set("n", "<leader>hp", function()
			harpoon:list():prev()
		end, opts)
	end,
}
