local opt = vim.opt

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

vim.api.nvim_set_hl(0, 'CursorLine', { underline = true })
