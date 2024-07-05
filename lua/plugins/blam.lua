return {
  "willothy/blam.nvim",
  build = "make",
  opts = {
    -- options
    enabled = false,
  },

  init = function()
    vim.keymap.set("n", "<leader>ba", require("blam").peek)
  end,
  config = true,
}
