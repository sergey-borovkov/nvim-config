return {
  -- First, configure copilot.lua
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = false }, -- disable the inline suggestions
      panel = { enabled = false }, -- disable the panel
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
  -- Then, add copilot-cmp
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "copilot.lua" },
    opts = {},
    config = function(_, opts)
      local copilot_cmp = require("copilot_cmp")
      copilot_cmp.setup(opts)
    end,
  },
  -- Finally, modify nvim-cmp to include copilot as a source
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources({
        { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      })
      return opts
    end,
  },
}
