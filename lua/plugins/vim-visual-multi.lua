vim.cmd([[
  let g:VM_maps = {}
  let g:VM_maps['Find Under']         = '<C-d>'
  let g:VM_maps['Find Subword Under'] = '<C-d>'

  hi! link VM_Mono   DiffText
  hi! link VM_Extend DiffAdd
  hi! link VM_Cursor Visual
  hi! link VM_Insert PmenuSel
]])
-- vim.g["VM_maps"] = {}
-- local vm = vim.g["VM_maps"]
--
-- vm["Find Under"] = "<C-d>"
-- vm["Find Subword Under"] = "<C-d>"

return {
	"mg979/vim-visual-multi",
  disabled = false,
  event = "VeryLazy",
	branch = "master",
	keys = { "<C-d>", "<C-Down>", "<C-Up>" },
}
