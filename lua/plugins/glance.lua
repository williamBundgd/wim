return {
	"dnlhc/glance.nvim",
	event = "VeryLazy",
	config = function()
		require("glance").setup({
			-- your configuration
		})
	end,
}
