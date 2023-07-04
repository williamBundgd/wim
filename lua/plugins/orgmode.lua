return {
	"nvim-orgmode/orgmode",
	enabled = true,
	event = "BufRead",
	config = function()
		require("orgmode").setup({
			-- your config
		})
		require("orgmode").setup_ts_grammar()
	end,
}
