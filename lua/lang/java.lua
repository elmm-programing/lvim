vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
lvim.builtin.treesitter.ensure_installed = {
  "java",
}
