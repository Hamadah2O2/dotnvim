return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files", silent = true },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", silent = true },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "List Buffers", silent = true },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags", silent = true },
		{ "<leader>fs", "<cmd>Telescope persisted<cr>", desc = "Persisted", silent = true },
	},
	config = function()
		require("configs.telescope")
	end,
}
