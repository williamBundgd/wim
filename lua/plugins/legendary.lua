return {
	"mrjones2014/legendary.nvim",
	keys = { { "<leader>fc", "<cmd>Legendary<cr>", desc = "Open Legendary" } },
	config = function()
		require("legendary").setup({
			which_key = {
				auto_register = true,
			},
		})
	end,
}
