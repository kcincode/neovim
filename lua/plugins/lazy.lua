return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
      news = {
        -- When enabled, NEWS.md will be shown when changed.
        -- This only contains big new features and breaking changes.
        lazyvim = true,
        -- Same but for Neovim's news.txt
        neovim = true,
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
    -- Optional: Disable specific keymaps if the explorer still opens via shortcuts
    keys = {
      { "e", false },
      { "E", false },
      { "fe", false },
      { "fE", false },
    },
  },
  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      default_file_explorer = true, -- Make oil open when editing directories
      view_options = { show_hidden = true, show_ignored = true },
    },
    keys = {
      { "<leader>e", "<cmd>Oil<CR>", desc = "Explorer" },
    },
  },
}
