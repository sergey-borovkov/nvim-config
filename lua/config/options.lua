-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.python3_host_prog = "/Users/sergey/.pyenv/shims/python3"
vim.g.lazyvim_python_lsp = "basedpyright"

local opt = vim.opt
opt.grepprg = "rg --vimgrep --smart-case"

vim.wo.number = true
vim.wo.relativenumber = true

local lazyvim_statuscolumn = require("lazyvim.util").ui.statuscolumn

_G.custom_statuscolumn = function()
  local result = lazyvim_statuscolumn()
  local lnum = vim.v.lnum
  local relnum = vim.v.relnum

  -- Use relative number, but show absolute number for the current line
  local number = relnum == 0 and lnum or relnum

  -- Replace %l with our calculated number
  result = result:gsub("%%l", string.format("%d", number))

  return result
end

vim.opt.statuscolumn = "%!v:lua.custom_statuscolumn()"

vim.opt.inccommand = "split"
