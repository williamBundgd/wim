return {
	"folke/which-key.nvim",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup({})
		require("which-key").register({
			b = { name = "buffers" },
			c = { name = "code" },
			f = { name = "file" },
			g = { name = "git" },
			o = { name = "open" },
			p = { name = "projects" },
			q = { name = "quit" },
			r = { name = "refactor" },
			s = { name = "search" },
			u = { name = "preview" },
			x = { name = "diagnostics" },
		}, { prefix = "<leader>" })
	end,
}
