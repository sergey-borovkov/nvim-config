return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
      inlay_hints = { enabled = true },
      -- codelens = {
      --   enabled = true,
      -- },
    },
    servers = {
      pyright = {
        enabled = false,
      },
      basedpyright = {},
    },
  },
}
