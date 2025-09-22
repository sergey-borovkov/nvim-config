return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.toml = { "taplo" }
    opts.formatters_by_ft.sh = { "shfmt" }
    opts.formatters_by_ft.python = { "ruff_format" }
    opts.formatters_by_ft.cmake = { "cmake_format" }

    opts.formatters = opts.formatters or {}
    opts.formatters.taplo = {
      args = {
        "format",
        "--config",
        vim.fn.expand("~/.taplo.toml"),
        "-",
      },
    }
    opts.formatters.shfmt = {
      inherit = false,
      command = "shfmt",
      args = { "-i", "4", "-filename", "$FILENAME" },
    }
    opts.formatters.cmake_format = {
      command = "cmake-format",
      args = { "-" },
      stdin = true,
    }

    return opts
  end,
}
