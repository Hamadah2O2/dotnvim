return {
	"fedepujol/move.nvim",
  event = "VeryLazy",
	config = function()
		require("move").setup({})

		local opts = { noremap = true, silent = true }
		vim.keymap.set({"n", "i", "v"}, "<A-j>", ":MoveLine(1)<CR>", opts)
		vim.keymap.set({"n", "i", "v"}, "<A-k>", ":MoveLine(-1)<CR>", opts)
		vim.keymap.set({"n", "i", "v"}, "<A-h>", ":MoveHChar(-1)<CR>", opts)
		vim.keymap.set({"n", "i", "v"}, "<A-l>", ":MoveHChar(1)<CR>", opts)
		-- vim.keymap.set("n", "<leader>wf", ":MoveWord(1)<CR>", opts)
		-- vim.keymap.set("n", "<leader>wb", ":MoveWord(-1)<CR>", opts)
	end,
}
