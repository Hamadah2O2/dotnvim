-- import lsp config
local lspconfig = require("lspconfig")

-- import cmp-nvim-lsp plugin
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- used to enable autocompletion (umm)
local capabilities = cmp_nvim_lsp.default_capabilities()

--Enable (broadcasting) snippet capability for completion
local capabilitiesHtml = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig["lua_ls"].setup({})
lspconfig.html.setup {
  capabilities = capabilities
}
lspconfig["eslint"].setup({
  autostart = false,
  capabilities = capabilities,
})
lspconfig["cssls"].setup({
  capabilities = capabilities,
})
lspconfig["ts_ls"].setup({
  autostart = false,
  capabilities = capabilities,
})
lspconfig['intelephense'].setup({
  capabilities = capabilities,
})
lspconfig["emmet_ls"].setup({
  filetypes = { "astro", "css", "eruby", "html", "htmldjango", "javascriptreact", "less", "pug", "sass", "scss", "svelte", "typescriptreact", "vue", "htmlangular", "php" },
  capabilities = capabilities,
})
lspconfig["lemminx"].setup{
  capabilities = capabilities
}
