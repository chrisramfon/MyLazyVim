-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
vim.g.lazyvim_php_lsp = "intelephense"
vim.g.autoformat = false
local opt = vim.opt
opt.tabstop = 4       -- Number of spaces that a <Tab> counts for
opt.softtabstop = 4   -- Number of spaces a tab feels like when editing
opt.shiftwidth = 4    -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true  -- Use spaces instead of actual tab characters
