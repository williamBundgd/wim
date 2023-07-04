return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	keys = {
		{
			"<leader>cc",
			"<cmd>lua require('neogen').generate()<CR>",
			desc = "Generate Documentation for Current Function",
		},
	},
	config = function()
		require("neogen").setup({
			enabled = true,
			languages = {
				lua = {
					template = {
						annotation_convention = "emmylua",
					},
				},
				sh = {
					template = {
						annotation_convention = "google_bash",
					},
				},
				c = {
					template = {
						annotation_convention = "doxygen",
					},
				},
				javascript = {
					template = {
						annotation_convention = "jsdoc",
					},
				},
				java = {
					template = {
						annotation_convention = "javadoc",
					},
				},
				rust = {
					template = {
						annotation_convention = "rustdoc",
					},
				},
			},
		})
	end,
}
