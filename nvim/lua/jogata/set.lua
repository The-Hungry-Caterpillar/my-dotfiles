-- Change leader key to comma
vim.g.mapleader = ","

-- Fat cursor
vim.opt.guicursor = ""
-- Line numbers, relative
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab settings
vim.opt.tabstop = 2
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = true

-- Highlight search hits
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Better colors
vim.opt.termguicolors = true

-- Always have 8 columns at bottom
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
--vim.opt.isfname:append("@-@")

-- Fast
vim.opt.updatetime = 50

-- Column at 80 characters
vim.opt.colorcolumn = "80"

