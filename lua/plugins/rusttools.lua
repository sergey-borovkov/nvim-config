return {
  "mrcjkb/rustaceanvim",
  version = "^4", -- Recommended
  lazy = false, -- This plugin is already lazy
}, 
{
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mrcjkb/rustaceanvim" },
    opts = {
      setup = {
        rust_analyzer = function(_, opts)
          require("rustaceanvim").setup({ server = opts })
          return true
        end,
      },
    },
  },
}
