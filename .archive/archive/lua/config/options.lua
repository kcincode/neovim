vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.autoformat = true

local o = vim.opt

o.number = true
o.relativenumber = true
o.confirm = true
o.cursorline = true

o.tabstop = 4
o.shiftwidth = 4
o.shiftround = true
o.expandtab = true
o.softtabstop = 4
o.signcolumn = "yes:1"
o.ignorecase = true
o.smartcase = true
o.linebreak = true
o.list = true
o.scrolloff = 10
o.smoothscroll = true
o.termguicolors = true
o.swapfile = false
o.autoindent = true
o.wrap = false
o.undodir = os.getenv("HOME") .. "/.undodir"
o.undofile = true
o.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

vim.cmd.filetype("plugin indent on")
