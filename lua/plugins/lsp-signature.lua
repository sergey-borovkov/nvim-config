return {
  {
    "ray-x/lsp_signature.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("lsp_signature").setup({
        bind = true, -- mandatory for borders
        floating_window = true, -- use a floating window
        floating_window_above_cur_line = true, -- place it above the current line
        fix_pos = true, -- keep the window in place
        hint_enable = false, -- disable inline hints if you prefer
        handler_opts = {
          border = "rounded",
        },
        -- You can experiment with these as well:
        -- doc_lines = 10, -- number of lines from the docstring to show
        -- max_height = 12,
        -- max_width = 80,
      })
    end,
  },
}
