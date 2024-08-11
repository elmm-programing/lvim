require("copilot").setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
})
-- local ok, copilot = pcall(require, "copilot")
-- if not ok then
--   return
-- end


-- local opts = { noremap = true, silent = true }
-- vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)
