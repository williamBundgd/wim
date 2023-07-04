return {
	"nvim-tree/nvim-tree.lua",
	event = "VeryLazy",
	cmd = { "NvimTreeToggle" },
	keys = {
		{ "<leader>oe", "<cmd>NvimTreeToggle<cr>", desc = "Explorer NvimTree" },
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer NvimTree" },
	},
	config = function()
		require("nvim-tree").setup({
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			sort_by = "case_sensitive",
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})
	end,
}
