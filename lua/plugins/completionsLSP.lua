local command = {
  "CocCommand",
  "CocConfig",
  "CocDiagnostics",
  "CocDisable",
  "CocEnable",
  "CocFirst",
  "CocInfo",
  "CocInstall",
  "CocLast",
  "CocList",
  "CocListCancel",
  "CocListResume",
  "CocLocalConfig",
  "CocNext",
  "CocOpenLog",
  "CocOutline",
  "CocPrev",
  "CocPrintErrors",
  "CocRestart",
  "CocSearch",
  "CocStart",
  "CocUninstall",
  "CocUpdate",
  "CocUpdateSync",
  "CocWatch",
}

return {
  -- { "mattn/emmet-vim" },
  {
    "neoclide/coc.nvim",
    branch = "release",
    lazy = true,
    event = {
      "InsertEnter",
      -- "VeryLazy",
    },
    cmd = command,
    dependencies = {
      { "windwp/nvim-autopairs" },
      { "SirVer/ultisnips" },
      { "honza/vim-snippets" },
      -- { "neoclide/vim-jsx-improve" }, { "maxmellon/vim-jsx-pretty" },
      {
        "bullets-vim/bullets.vim",
        config = function()
          vim.g.bullets_enabled_file_types = { 'markdown', 'text', 'gitcommit', 'scratch' }
          vim.cmd([[let g:bullets_set_mappings = 0]])
        end
      }
    },
    config = function()
      require("configs.coc")
      -- For coc-html-css-support
      vim.cmd([[autocmd BufWritePost *.css CocCommand html-css-support.dispose]])
    end,
  },

  {
    "windwp/nvim-autopairs",
    -- enabled = false,
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
}
