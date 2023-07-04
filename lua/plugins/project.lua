return {
	"ahmedkhalf/project.nvim",
	keys = {
		{ "<leader>pp", "<cmd>Telescope projects<cr>", desc = "Projects" },
	},
	config = function()
		require("project_nvim").setup({
			patterns = { ".project", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
		})
		require("telescope").load_extension("projects")
	end,
}
