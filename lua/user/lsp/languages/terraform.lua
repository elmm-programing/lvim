local lsp_manager = require "lvim.lsp.manager"
vim.cmd([[
  autocmd BufRead,BufNewFile *.tf set filetype=terraform
]])
require('lspconfig').terraformls.setup{}
lsp_manager.setup("terraformls", {
  filetypes = { "terraform", "hcl", "tf" },
  root_dir = lsp_manager.root_pattern(".terraform", ".git"),

})
lsp_manager.setup("tflint", {
  filetypes = { "terraform", "hcl", "tf" },
  root_dir = lsp_manager.root_pattern(".terraform", ".git"),
})


--generate me a lunarvim config for terraformls and tflint
lsp_manager.generate_lspconfig("terraformls")
lsp_manager.generate_lspconfig("tflint")


