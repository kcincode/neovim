-- set <space> as the leader key
-- must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- enable true color support
vim.opt.termguicolors = true

-- make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- scoll off better display
vim.opt.scrolloff = 10

-- enable mouse mode, can be useful for resizing splits
vim.opt.mouse = "a"

-- sync clipboard between OS and neovim.
--  remove this option if you want your OS clipboard to remain independent.
--  see `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- save undo history
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- sets how neovim will display certain whitespace characters in the editor.
--  see `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- enable live preview of substitutions
vim.opt.inccommand = "split"

-- show which line your cursor is on
vim.opt.cursorline = true

-- set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- enable break indent
vim.opt.breakindent = true

-- enable line wrapping
vim.opt.wrap = false

-- Completion menu options
vim.opt.completeopt = { "menuone", "popup", "noinsert" }
vim.opt.winborder = "rounded"

-- formatting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.textwidth = 120
vim.opt.colorcolumn = "120"

vim.cmd.filetype("plugin indent on")

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.INFO] = " ",
			[vim.diagnostic.severity.HINT] = " ",
		},
	},
	virtual_text = true, -- show inline diagnostics
})
