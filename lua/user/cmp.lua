
local cmp = lvim.builtin.cmp
cmp.window = {
  completion = {
    border = "rounded",
    winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,FloatBorder:FloatBorder,Search:None",
    col_offset = -3,
    side_padding = 1,
    scrollbar = false,
    -- scrollbar = {
    --   position = 'inside',
    -- },
    scrolloff = 8,
  },
  documentation = {
    border = "rounded",
    winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,Search:None",
  },
}
vim.opt.pumblend = 10


cmp.formatting = {
  format = require("lspkind").cmp_format({
    with_text = true,
    menu = {
      buffer = "(Buffer)",
      calc = "(Calc)",
      cmp_tabnine = "(Tabnine)",
      copilot = "(Copilot)",
      emoji = "(Emoji)",
      luasnip = "(Snippet)",
      nvim_lsp = "(LSP)",
      path = "(Path)",
      tmux = "(TMUX)",
      treesitter = "(TreeSitter)",
      vsnip = "(Snippet)",
    },
  }),
}
lvim.builtin.cmp.sources = {
  { name = "nvim_lsp" },
  { name = "luasnip" },
  { name = "path" },
  { name = "cmp_tabnine" },
  { name = "emoji" },
  { name = "buffer" },
  { name = "calc" },
  { name = "treesitter" },
  { name = "tmux" },
  { name = "vsnip" },
  { name = "cmp_tabnine" },
  { name = "copilot" },
  { name = "emoji" },
}



-- lvim.builtin.cmp.sources[3].entry_filter = function(entry, ctx)
--   local kind = require("cmp.types.lsp").CompletionItemKind[entry:get_kind()]
--   if kind == "Snippet" and ctx.prev_context.filetype == "java" then
--     return false
--   end

--   if kind == "Text" and not ctx.prev_context.filetype == "markdown" then
--     return false
--   end

--   return true
-- end
