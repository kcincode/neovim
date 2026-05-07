-- INFO: completion engine
vim.pack.add({
	{ src = "https://github.com/saghen/blink.lib" },
	{
		src = "https://github.com/saghen/blink.cmp",
		build = function()
			require("blink.cmp").build():wait(60000)
		end,
	},
}, { confirm = false })

require("blink.cmp").setup({
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
	},
	signature = { enabled = true },

	appearance = { use_nvim_cmp_as_default = true, nerd_font_variant = "normal" },

	-- default blink keymaps
	keymap = {
		["<C-p>"] = { "select_prev", "fallback_to_mappings" },
		["<C-n>"] = { "select_next", "fallback_to_mappings" },
		["<C-y>"] = { "select_and_accept", "fallback" },
		["<C-e>"] = { "cancel", "fallback" },
		["<C-space>"] = { "show", "show_documentation", "hide_documentation" },

		["<Tab>"] = { "snippet_forward", "fallback" },
		["<S-Tab>"] = { "snippet_backward", "fallback" },

		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f>"] = { "scroll_documentation_down", "fallback" },

		["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
	},

	fuzzy = {
		implementation = "lua",
	},

	-- cmdline = {
	-- 	keymap = {
	-- 		preset = "inherit",
	-- 		["<CR>"] = { "select_and_accept", "fallback" },
	-- 	},
	-- },

	sources = { default = { "lsp" } },
})
