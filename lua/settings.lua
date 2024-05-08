-- [[ Setting Options ]]

local opt = vim.opt
local api = vim.api
local cmd = vim.cmd

opt.mouse = "a" -- Enable mouse support

-- Basic setup for lines
opt.cursorline = true
opt.number = true -- Line number
opt.relativenumber = true -- Relative line numbers
opt.termguicolors = true
opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below cursor

-- Indents
opt.smartindent = true

-- Linewrap
opt.wrap = false
opt.breakindent = true

-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Miscellaneous
opt.showmode = false -- Don't show mode, since it's already in the status line
opt.clipboard = "unnamedplus" -- Sync clipboard between os and neovim
opt.undofile = true -- Keep undo file history
opt.signcolumn = "yes"
opt.updatetime = 250 -- Save when idle
opt.timeoutlen = 300

-- Set how neovim displays whitespace characters
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Highlight when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
