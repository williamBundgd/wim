return {
	"folke/which-key.nvim",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup({})
		require("which-key").add({
                        { "<leader>b", group = "buffers" },
                        { "<leader>c", group = "code" },
                        { "<leader>f", group = "file" },
                        { "<leader>g", group = "git" },
                        { "<leader>o", group = "open" },
                        { "<leader>p", group = "projects" },
                        { "<leader>q", group = "quit" },
                        { "<leader>r", group = "refactor" },
                        { "<leader>s", group = "search" },
                        { "<leader>u", group = "preview" },
                        { "<leader>x", group = "diagnostics" },
		})
		-- require("which-key").register({
		-- 	b = { name = "buffers" },
		-- 	c = { name = "code" },
		-- 	f = { name = "file" },
		-- 	g = { name = "git" },
		-- 	o = { name = "open" },
		-- 	p = { name = "projects" },
		-- 	q = { name = "quit" },
		-- 	r = { name = "refactor" },
		-- 	s = { name = "search" },
		-- 	u = { name = "preview" },
		-- 	x = { name = "diagnostics" },
		-- }, { prefix = "<leader>" })
	end,
}
