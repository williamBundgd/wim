return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	ft = "norg",
	event = "VeryLazy", -- To use commands like "Neorg journal" without being in a neorg file
	opts = {
		load = {
			["core.defaults"] = {}, -- Loads default behaviour
			["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
			["core.norg.dirman"] = { -- Manages Neorg workspaces
				config = {
					workspaces = {
						neorg = "~/neorg",
					},
					index = "index.norg",
				},
			},
			["core.norg.journal"] = {
				config = {
					journal_folder = "journal",
					strategy = "flat",
					template = "journal.norg",
				},
			},
			["core.norg.qol.todo_items"] = {
				config = {
					create_todo_items = true,
					create_todo_parents = false,
				},
			},
			["core.export"] = {},
			["core.export.markdown"] = {},
		},
	},
	dependencies = { { "nvim-lua/plenary.nvim" } },
}
