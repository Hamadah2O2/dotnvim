return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-t>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
        insert_mappings = false,  -- whether or not the open mapping applies in insert mode
        terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      })
    end,
  },

  -- toggleterm manager
  {
    "ryanmsnyder/toggleterm-manager.nvim",
    keys = {
      { "<leader>ft", "<cmd>Telescope toggleterm_manager<cr>", silent = true, desc = "Terminal manager" },
    },
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = true,
  },
}
