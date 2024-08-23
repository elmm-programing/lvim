local lsp_manager = require "lvim.lsp.manager"

lsp_manager.setup("eslint", {
  on_attach = function(client, bufnr)
    require("lvim.lsp").common_on_attach(client, bufnr)
    local _, _ = pcall(vim.lsp.codelens.refresh)
  end,
  on_init = require("lvim.lsp").common_on_init,
  capabilities = require("lvim.lsp").common_capabilities(),
})


local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "vue",
      "html",
      "markdown",
      "json",
      "yaml",
      "css",
      "scss",
      "less",
      "graphql" }
  }
}
