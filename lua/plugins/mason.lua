return {
  "mason-org/mason.nvim",
  opts = {
    -- A list of servers to ensure are installed.
    -- These will be installed automatically by mason-lspconfig.
    -- Alternatively, you can leave this empty and install manually
    -- or use the ensure_installed function.
    ensure_installed = {
      "lua-language-server",
      "css-lsp",
      "html-lsp",
      "json-lsp",
      "biome",
      "docker-compose-language-service",
      "docker-language-server",
      "djlint",
      "eslint-lsp",
      "gofumpt",
      "goimports",
      "golangci-lint",
      "gopls",
      "hadolint",
      "intelephense",
      "pint",
      "php-cs-fixer",
      "phpcs",
      "prettier",
      "ruff",
      "pyright",
      "shfmt",
      "stylua",
      "tailwindcss-language-server",
      "vtsls",
      "elixir-ls",
      "nextls",
    },
  },
}
