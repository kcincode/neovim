vim.pack.add({
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	{ src = "https://github.com/akinsho/bufferline.nvim" },
}, { confirm = false })

local colors = require("catppuccin.palettes").get_palette()
require("bufferline").setup({
	highlights = {
		separator = {
			fg = colors.mauve,
		},
		separator_selected = {
			bg = colors.surface0,
		},
		indicator_selected = {
			bg = colors.surface0,
		},
		close_button_selected = {
			bg = colors.surface0,
		},
		fill = {
			bg = colors.mantle,
		},
		buffer_selected = {
			fg = colors.lavender,
			bg = colors.surface0,
		},
	},
})
