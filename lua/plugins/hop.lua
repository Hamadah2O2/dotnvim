return {
	"phaazon/hop.nvim",
	keys = {
		{
			"<leader>qw",
			"<cmd>HopWord<cr>",
			noremap = true,
			desc = "Hop Hop Word",
		},
    {
      "<leader>qe",
      "<cmd>HopAnywhere<cr>",
      noremap = true,
      desc = "Hop Anywhere"
    }
	},
	config = function()
		require("hop").setup()
	end,
}
