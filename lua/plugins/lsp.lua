return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {},
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
      },
    },
  },
}
