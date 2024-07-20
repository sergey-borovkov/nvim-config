-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.relativenumber = true

vim.g.cmp_widths = {
  abbr = 250,
  menu = 100,
}

vim.opt.spell = true
