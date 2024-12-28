return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      ["<Tab>"] = { "accept" },
      ["<CR>"] = { "select_next", "fallback" },
    },
    -- sources = {
    --   compat = { "avante_commands", "avante_mentions" },
    -- },
  },
}
