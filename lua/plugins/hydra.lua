return {
	"nvimtools/hydra.nvim",
  -- enabled = false,
  -- event = "VeryLazy",
  cmd = "HydraLoad",
  config = function ()
    require("configs.hydra")
  end
}
