--[[ return {
	-- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	"folke/tokyonight.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		-- Load the colorscheme here.
		-- Like many other themes, this one has different styles, and you could load
		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
		require("tokyonight").setup({
			style = "night",
			terminal_colors = true,
			transparent = true,
			--             on_highlights = function(hl, c)
			--                 hl.CursorLine = {
			--                     underline = true
			--                 }
			--             end
		})
		vim.cmd.colorscheme("tokyonight-night")

		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
} ]]

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		require("catppuccin").setup({
			flavour = "auto",
			background = {
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false,
			term_colors = true,
			--             on_highlights = function(hl, c)
			--                 hl.CursorLine = {
			--                     underline = true
			--                 }
			--             end
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		})
		vim.cmd.colorscheme("catppuccin")

		-- You can configure highlights by doing something like:
		vim.cmd.hi("Comment gui=none")
	end,
}
