return {
	"uga-rosa/ccc.nvim",
	event = {
		"InsertEnter",
		"BufNewFile",
	},
	keys = {
		{ "ccc", "<CMD>CccPick<CR>", mode = { "n" }, desc = "Color Picker" },
	},
	config = function()
		require("ccc").setup({
			highlighter = {
			  auto_enable = true,
              lsp = false
			},
		})
	end,
}
