-- INFO: fuzzy finder
vim.pack.add({
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
}, { confirm = false })

local pickers = require("fzf-lua")
pickers.setup({
	files = {
		no_ignore = true,
		find_opts = [[-type f \! -path '*/.git/*' \! -path '*/.jj/*' \! -path '*/node_modules/*' \! -path '*/.venv/*']],
		rg_opts = [[--color=never --files -g "!.git" -g "!.jj" -g "!node_modules" -g "!.venv"]],
		fd_opts = [[--color=never --type f --type l --exclude .git --exclude .jj --exclude node_modules --exclude .venv]],
	},
})
pickers.register_ui_select()

vim.keymap.set("n", "<leader><leader>", pickers.files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sf", pickers.files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sg", pickers.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sb", pickers.buffers, { desc = "[S]earch Builtin [P]ickers" })
vim.keymap.set("n", "<leader>sw", pickers.grep_cword, { desc = "[S]earch Current [W]ord" })
vim.keymap.set("n", "<leader>sr", pickers.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>sh", pickers.helptags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sm", pickers.manpages, { desc = "[S]earch [M]anuals" })
