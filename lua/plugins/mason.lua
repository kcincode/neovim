-- INFO: lsp server installation and configuration

-- lsp servers we want to use and their configuration
-- see `:h lspconfig-all` for available servers and their settings
local lsp_servers = {
	ruff = {},
	cssls = {},
	gopls = {},
	phpactor = {},
	basedpyright = {
		basedpyright = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "openFilesOnly",
				typeCheckingMode = "off",
			},
		},
	},
	lua_ls = {
		-- https://luals.github.io/wiki/settings/ | `:h nvim_get_runtime_file`
		Lua = { workspace = { library = vim.api.nvim_get_runtime_file("lua", true) } },
	},
}

vim.pack.add({
	"https://github.com/neovim/nvim-lspconfig", -- default configs for lsps
	-- NOTE: if you'd rather install the lsps through your OS package manager you
	-- can delete the next three mason-related lines and their setup calls below.
	-- see `:h lsp-quickstart` for more details.
	"https://github.com/mason-org/mason.nvim", -- package manager
	"https://github.com/mason-org/mason-lspconfig.nvim", -- lspconfig bridge
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim", -- auto installer
}, { confirm = false })

local mason_pkgs = {
	"shfmt",
	"stylua",
	"oxfmt",
	"oxlint",
	"prettier",
	"ruff",
	"djlint",
	"gopls",
}
local lsp_pkgs = vim.tbl_keys(lsp_servers)
table.move(lsp_pkgs, 1, #lsp_pkgs, #mason_pkgs + 1, mason_pkgs)

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = mason_pkgs,
})

-- configure each lsp server on the table
-- to check what clients are attached to the current buffer, use
-- `:checkhealth vim.lsp`. to view default lsp keybindings, use `:h lsp-defaults`.
for server, config in pairs(lsp_servers) do
	-- vim.lsp.enable(server)
	vim.lsp.config(server, {
		settings = config,

		-- only create the keymaps if the server attaches successfully
		on_attach = function(_, bufnr)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Goto Definition" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "References" })
			vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Goto Implementation" })
			vim.keymap.set("n", "gy", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Goto T[y]pe Definition" })
			vim.keymap.set("n", "gD", vim.lsp.buf.definition, { buffer = bufnr, desc = "Goto Declaration" })
			vim.keymap.set("n", "K", function()
				return vim.lsp.buf.hover()
			end, { buffer = bufnr, desc = "Hover" })
			vim.keymap.set("n", "gK", function()
				return vim.lsp.buf.signature_help()
			end, { buffer = bufnr, desc = "Signature Help" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code Action" })
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })
		end,
	})
end
