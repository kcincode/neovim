vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
})

vim.diagnostic.config({ virtual_text = true })

-- configure servers
vim.lsp.config("lua_ls", {})
vim.lsp.config("bashls", {})
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      disableOrganizeImports = true,
      analysis = {
        typeCheckingMode = "off",
        inlayHints = {
          callArgumentNames = true,
        },
      },
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { "*" },
      },
    },
  },
})
vim.lsp.config("ruff", {})
vim.lsp.config("oxlint", {})

-- enable servers
vim.lsp.enable({
  "lua_ls",
  "bashls",
  "basedpyright",
  "ruff",
  "oxlint",
})
