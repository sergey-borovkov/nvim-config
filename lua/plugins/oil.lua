return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = {
        "icon",
        -- "permissions",
        "size",
        "mtime",
      },
      keymaps = { ["<Esc>"] = "actions.close" },
      view_options = {
        show_hidden = true,
      },
    })
  end,
  keys = {
    { "=", "<cmd>Oil<cr>", mode = "n", desc = "Open Filesystem" },
    { "-", "<cmd>Oil --float<cr>", mode = "n", desc = "Open Floating Filesystem" },
  },
}
