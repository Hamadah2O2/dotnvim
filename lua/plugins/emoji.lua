return {
	"allaman/emoji.nvim",
	version = "1.0.0", -- optionally pin to a tag
	dependencies = {
		-- optional for telescope integration
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		-- default is false
		enable_cmp_integration = false,
	},
  keys = {
    {"<leader>fu", ":Telescope emoji<cr>", desc = "Icons Picker"}
  },
	config = function(_, opts)
		require("emoji").setup(opts)
		-- optional for telescope integration
		require("telescope").load_extension("emoji")
	end,
}
