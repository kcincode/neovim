return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {},
        pint = {},
        djlint = {},
        biome = {},
        basedpyright = {
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
        },
      },
    },
  },
}
