local opt = vim.opt
local api = vim.api
local cmd = vim.cmd

-- Basic setup for lines
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.termguicolors = true

-- Tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true

-- Indents
opt.smartindent = true

-- Linewrap
opt.wrap = false

-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false
