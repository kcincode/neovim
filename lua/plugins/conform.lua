return {
  "stevearc/conform.nvim",
  lazy = true,
  opts = {
    formatters_by_ft = {
      htmldjango = { "djlint" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      elixir = { "mix" },
      eelixir = { "mix" },
      heex = { "mix" },
      surface = { "mix" },
      blade = { "blade-formatter" },
      php = { "pint", "php-cs-fixer" },
      python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
    },
  },
}
