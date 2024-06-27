return {
	"mrjones2014/smart-splits.nvim",
	-- lazy = true,
	config = function()
		local splits = require("smart-splits")

		vim.keymap.set("n", "<A-Left>", function() splits.resize_left(2) end)
		vim.keymap.set("n", "<A-Down>", function() splits.resize_down(2) end)
		vim.keymap.set("n", "<A-Up>", function() splits.resize_up(2) end)
		vim.keymap.set("n", "<A-Right>", function() splits.resize_right(2) end)
	end,
}
