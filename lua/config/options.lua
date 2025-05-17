-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.python3_host_prog = "/home/sergey/.virtualenvs/OptiLayer2/bin/python"
vim.g.lazyvim_python_lsp = "basedpyright"

local opt = vim.opt
-- opt.grepprg = "rg --vimgrep --smart-case"

vim.wo.number = true
vim.wo.relativenumber = true

vim.g.mcphub_auto_approve = true
opt.inccommand = "split"
opt.laststatus = 3
