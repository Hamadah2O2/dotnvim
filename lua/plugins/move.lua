return {
  "fedepujol/move.nvim",
  event = "VeryLazy",
  config = function()
    require("move").setup({})

    local opts = { noremap = true, silent = true }
    vim.keymap.set({ "n", "i" }, "<A-j>", "<esc>:MoveLine(1)<CR>", opts)
    vim.keymap.set({ "n", "i" }, "<A-k>", "<esc>:MoveLine(-1)<CR>", opts)
    -- vim.keymap.set({ "n", "i"}, "<A-h>", "<esc>:MoveHChar(-1)<CR>", opts)
    -- vim.keymap.set({ "n", "i"}, "<A-l>", "<esc>:MoveHChar(1)<CR>", opts)
    -- vim.keymap.set("n", "<leader>wf", ":MoveWord(1)<CR>", opts)
    -- vim.keymap.set("n", "<leader>wb", ":MoveWord(-1)<CR>", opts)

    -- Visual mode
    -- vim.keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>", opts)
    -- vim.keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>", opts)
    -- vim.keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>", opts)
    -- vim.keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>", opts)
  end,
}
