vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
}, { confirm = false })
require("conform").setup({
	formatters_by_ft = {
		sh = { "shfmt" },
		lua = { "stylua" },
		python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
		javascript = { "oxfmt", "oxlint" },
		typescript = { "oxfmt", "oxlint" },
		javascriptreact = { "oxfmt", "oxlint" },
		typescriptreact = { "oxfmt", "oxlint" },
		json = { "oxfmt" },
		jsonc = { "oxfmt" },
		css = { "oxfmt" },
		htmldjango = { "djlint" },
		xml = { "prettier" },
		go = { "gofmt" },
	},
})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
