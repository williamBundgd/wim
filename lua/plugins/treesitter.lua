return {
	"nvim-treesitter/nvim-treesitter",
	version = false, -- last release is way too old and doesn't work on Windows
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	keys = {
		{ "<c-space>", desc = "Increment selection" },
		{ "<bs>", desc = "Schrink selection", mode = "x" },
	},
	dependencies = {
		"HiPhish/nvim-ts-rainbow2",
	},
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		context_commentstring = { enable = true, enable_autocmd = false },
		ensure_installed = {
			"bash",
			"help",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"regex",
			"tsx",
			"typescript",
			"vim",
			"yaml",
			"rust",
			"c",
			"cpp",
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = "<nop>",
				node_decremental = "<bs>",
			},
		},
		-- rainbow = {
		-- 	enable = true,
		-- 	-- Which query to use for finding delimiters
		-- 	query = "rainbow-parens",
		-- 	-- Highlight the entire buffer all at once
		-- 	strategy = require("ts-rainbow.strategy.global"),
		-- },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
