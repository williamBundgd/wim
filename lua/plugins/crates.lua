return {
	"Saecki/crates.nvim",
	event = "VeryLazy", -- Can't do FT because of CMP
	config = function()
		require("crates").setup({})
	end,
}
