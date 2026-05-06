vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", lazy = false },
}, { confirm = false })
require("nvim-treesitter.install").update({ "all" })
require("nvim-treesitter").install({
	"python",
	"lua",
	"javascript",
	"typescript",
	"html",
	"css",
})
