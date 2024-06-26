return {
	"nvim-tree/nvim-tree.lua",
	cmd = {
		"NvimTreeToggle",
	},
  keys = { "<C-n>" },
	config = function()
    -- start barbar
    vim.cmd("Lazy load barbar.nvim")

		-- optionally enable 24-bit colour
		vim.opt.termguicolors = true

		-- OR setup with some options
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 32,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})

		vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
	end,
}
