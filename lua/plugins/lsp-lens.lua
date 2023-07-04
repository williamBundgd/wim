return {
	"VidocqH/lsp-lens.nvim",
	enabled = false,
	event = "VeryLazy",
	keys = {
		{ "<leader>cl", "<cmd>LspLensToggle<CR>", desc = "Toggle LSP Code Lens" },
	},
	config = function()
		require("lsp-lens").setup({
			enable = true,
			include_declaration = true, -- Reference include declaration
			sections = { -- Enable / Disable specific request
				definition = true,
				references = true,
				implementation = true,
			},
		})
		vim.cmd([[LspLensOn]])
	end,
}
