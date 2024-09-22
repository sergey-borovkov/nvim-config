return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      toml = { "taplo" },
      sh = { "shfmt" },
    },
    formatters = {
      taplo = {
        args = {
          "format",
          "--config",
          vim.fn.expand("~/.taplo.toml"),
          "-",
        },
      },
      shfmt = {
        inherit = false,
        command = "shfmt",
        args = { "-i", "2", "-filename", "$FILENAME" },
      },
    },
  },
}
