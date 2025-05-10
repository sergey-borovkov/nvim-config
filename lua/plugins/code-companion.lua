return {
  "olimorris/codecompanion.nvim",
  opts = {
    strategies = {
      chat = {
        adapter = "anthropic",
      },
      inline = {
        adapter = "anthropic",
      },
    },
  },
  -- keys = {
  --   { "<leader>ac", "<cmd>CodeCompanionActions<cr>", desc = "Code Companion Actions", mode = { "n", "v" } },
  -- },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
