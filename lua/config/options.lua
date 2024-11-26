-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set to "basedpyright" to use basedpyright instead of pyright.
-- vim.g.python3_host_prog = "/Users/sergey/.pyenv/shims/python3"
vim.g.lazyvim_python_lsp = "basedpyright"

local opt = vim.opt
-- opt.grepprg = "rg --vimgrep --smart-case"

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.inccommand = "split"
