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

  -- -------------------------
  -- Main Completion using coc
  -- -------------------------
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

  -- -------------------------------
  -- plugins for automation (windwp)
  -- -------------------------------
  {
    "windwp/nvim-ts-autotag",
    -- enabled = false,
    event = "InsertEnter",
    config = function()
      require('nvim-ts-autotag').setup({
        opts = {
          -- Defaults
          enable_close = true,          -- Auto close tags
          enable_rename = true,         -- Auto rename pairs of tags
          enable_close_on_slash = false -- Auto close on trailing </
        },
      })
    end,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
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
