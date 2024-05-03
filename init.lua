-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require("lspconfig").pylyzer.setup({
--   settings = {
--     python = {
--       inlayHints = true,
--     },
--   },
-- })
require("lspconfig").basedpyright.setup({
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = false,
        diagnosticMode = "openFilesOnly",
      },
    },
  },
})
