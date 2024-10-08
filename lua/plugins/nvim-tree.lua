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

    -- setup with some options
    require("nvim-tree").setup({
      filters = {
        dotfiles = true,
      },
      disable_netrw = true,
      hijack_netrw = true,
      hijack_cursor = true,
      hijack_unnamed_buffer_when_opening = false,
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = false,
      },
      view = {
        adaptive_size = false,
        side = "left",
        width = 32,
        preserve_window_proportions = true,
      },
      git = {
        enable = true,
        ignore = true,
      },
      filesystem_watchers = {
        enable = true,
      },
      actions = {
        open_file = {
          resize_window = true,
        },
      },
      renderer = {
        root_folder_label = false,
        highlight_git = true,
        highlight_opened_files = "none",
        icons = {
        }
      },
    })

    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
  end,
}
