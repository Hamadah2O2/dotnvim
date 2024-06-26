require("auto-save").setup {
  -- your config goes here
  enabled = false,
  trigger_events = { "InsertLeave", "FocusLost" }, -- vim events that trigger auto-save. See :h events
  write_all_buffers = true,   -- write all buffers when the current one meets `condition`
  debounce_delay = 2535       -- saves the file at most every `debounce_delay` milliseconds
}
vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})
