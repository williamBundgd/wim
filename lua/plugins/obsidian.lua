-- Plugin to write in an obsidian vault with LSP and likes
return {
	"epwalsh/obsidian.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function () 
		require("obsidian").setup({
			dir = "~/Documents/Obsidian",
			completion = {
				nvim_cmp = true
			},
		})	
	end
}
