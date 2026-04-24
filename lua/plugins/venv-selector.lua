return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } },
  ft = "python",
  keys = { { ",v", "<cmd>VenvSelect<cr>", desc = "Select Python virtual environment" } },
  opts = {
    options = {},
    search = {
      -- Search for virtual environments in the current workspace
      workspace = true,
    },
  },
}
