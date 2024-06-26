return {
    '2kabhishek/nerdy.nvim',
    lazy = true,
    dependencies = {
        'stevearc/dressing.nvim',
        'nvim-telescope/telescope.nvim',
    },
    cmd = 'Nerdy',
    keys = {
      {"<leader>fi", ":Nerdy<cr>", desc = "Icons Picker", silent = true}
    }
}
