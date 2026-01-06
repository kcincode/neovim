# Neovim Configuration

Welcome to my Neovim configuration! This repository contains my personal setup for Neovim, designed for productivity, extensibility, and ease of use. Whether you're a seasoned Vim user or just getting started, feel free to explore, fork, and adapt these configs to your workflow.

## Features

- **Plugin Management**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for fast, modular plugin loading.
- **LSP Support**: Out-of-the-box Language Server Protocol integration for code completion, diagnostics, and more.
- **Treesitter**: Enhanced syntax highlighting and code navigation.
- **Telescope**: Fuzzy finding for files, buffers, and more.
- **Custom Keybindings**: Intuitive shortcuts for common tasks.
- **Theming**: Beautiful, minimal color schemes.
- **Git Integration**: Seamless git commands and status indicators.

## Installation

1. **Backup your current Neovim config** (if any):
   ```sh
   mv ~/.config/nvim ~/.config/nvim.backup
   ```
2. **Clone this repository**:
   ```sh
   git clone https://github.com/kcincode/nvim-config.git ~/.config/nvim
   ```
3. **Open Neovim**:
   ```sh
   nvim
   ```
   The plugins will install automatically on first launch.

## Requirements

- [Neovim](https://neovim.io/) 0.11+
- [git](https://git-scm.com/)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope)
- [node.js](https://nodejs.org/) (for some LSP servers)

## Folder Structure

```
~/.config/nvim/
├── init.lua           # Main entry point
├── lua/
│   ├── plugins/       # Plugin specifications
│   ├── lsp/           # LSP configuration
│   └── ...            # Other Lua modules
└── ...
```

## Customization

Feel free to edit the configs to suit your needs. Most settings are organized in the `lua/` directory for easy navigation.

## Contributing

Pull requests and issues are welcome! Please open an issue if you find a bug or have a feature request.

---

Happy Vimming! 🚀
