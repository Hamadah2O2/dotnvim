vim.g.undotree_WindowLayout = 3

return {
	"mbbill/undotree",
	cmd = {
		"UndotreeFocus",
		"UndotreeHide",
		"UndotreePersistUndo",
		"UndotreeShow",
		"UndotreeToggle",
	},
  keys = {
    {"<F5>", ":UndotreeToggle<cr>", desc = "undotree"}
  }
}
