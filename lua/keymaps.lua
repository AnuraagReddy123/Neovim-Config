vim.g.mapleader = " "

local map = vim.keymap.set

-- Map netrw to leader pv
map('n', '<leader>pv', vim.cmd.Ex)

-- Ctrl + l to remove highlgihts and redraw screen
map('n', '<C-l>', ':nohlsearch<cr>', defaults)
