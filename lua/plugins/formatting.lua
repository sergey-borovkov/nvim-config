return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      toml = { "taplo" },
      sh = { "shfmt" },
      python = { "ruff_format" },
      cmake = { "cmake_format" },
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
      cmake_format = {
        command = "cmake-format",
        args = { "-" },
        stdin = true,
      },
    },
  },
}
