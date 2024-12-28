return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- setup = {
      --   rust_analyzer = function()
      --     return true
      --   end,
      -- },
      inlay_hints = { enabled = true },
      codelens = {
        enabled = true,
      },
      servers = {
        pyright = {
          enabled = false,
        },
        basedpyright = {},
        -- harper_ls = {
        --   settings = {
        --     ["harper-ls"] = {
        --       linters = {
        --         spell_check = true,
        --         an_a = true,
        --         terminating_conjunctions = true,
        --         sentence_capitalization = false, -- This disables the sentence capitalization check
        --       },
        --     },
        --   },
        -- },
      },
    },
  },
}
