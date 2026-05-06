vim.pack.add({
	{
		src = "https://github.com/linux-cultist/venv-selector.nvim",
	},
}, { confirm = false })

require("venv-selector").setup({
	ft = "python", -- Load when opening Python files
	keys = { { ",v", "<cmd>VenvSelect<cr>" } }, -- Open picker on keymap
	opts = {
		options = {}, -- plugin-wide options
		search = {}, -- custom search definitions
	},
})
