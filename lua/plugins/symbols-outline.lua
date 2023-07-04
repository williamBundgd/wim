return {
	"simrat39/symbols-outline.nvim",
	keys = { { "<leader>os", "<cmd>SymbolsOutline<CR>", desc = "Toggle Symbols Outline" } },
	config = function()
		require("symbols-outline").setup()
	end,
}
