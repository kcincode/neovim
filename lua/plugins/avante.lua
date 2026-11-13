vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/ColinKennedy/mega.logging" },
    { src = "https://github.com/ColinKennedy/mega.cmdparse" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/yetone/avante.nvim" },
}, { confirm = false })
require("avante").setup({})
