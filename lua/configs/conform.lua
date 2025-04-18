local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    svelte = { "prettierd", "prettier", stop_after_first = true },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    json = { "prettierd", "prettier", stop_after_first = true },
    graphql = { "prettierd", "prettier", stop_after_first = true },
    java = { "google-java-format" },
    kotlin = { "ktlint" },
    ruby = { "standardrb" },
    markdown = { "prettierd", "prettier", stop_after_first = true },
    erb = { "htmlbeautifier" },
    html = { "prettierd" },
    bash = { "beautysh" },
    proto = { "buf" },
    rust = { "rustfmt" },
    yaml = { "yamlfix" },
    toml = { "taplo" },
    css = { "prettierd", "prettier", stop_after_first = true },
    scss = { "prettierd", "prettier", stop_after_first = true },
  },
})

vim.keymap.set({ "n", "v" }, "<leader>l", function()
  conform.format({
    async = true,
    stop_after_first = true,
  })
end, { desc = "Format file or range (in visual mode)" })
