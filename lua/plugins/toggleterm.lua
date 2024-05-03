return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {},
  },
  {
    "stevearc/overseer.nvim",
    optional = true,
    dependencies = "akinsho/toggleterm.nvim",
    opts = {
      strategy = { "toggleterm" },
    },
  },
}
