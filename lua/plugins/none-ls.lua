return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = opts.sources or {}
    table.insert(
      opts.sources,
      nls.builtins.diagnostics.codespell.with({
        extra_args = { "--ignore-words=-", "-" },
        stdin = [[
crate
]],
      })
    )
  end,
}