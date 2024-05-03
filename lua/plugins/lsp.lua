return {
  {
    "neovim/nvim-lspconfig",
    opts = { inlay_hints = { enabled = true } },
    servers = {
      pyright = {
        enabled = false,
      },
      basedpyright = {},
    },
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  --   config = function(_, opts)
  --     require("lsp_signature").setup(opts)
  --   end,
  -- },
}
