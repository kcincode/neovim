return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {
        settings = {
          pyright = {
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
      },
      ruff = {},
      cssls = {},
      phpactor = {},
    },
  },
}
