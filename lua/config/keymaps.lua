M = {}
lvim.leader = ","

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
keymap("i", "kj", "<Esc>", opts)


