return {
	{
		"sainnhe/sonokai",
		version = false,
		enabled = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.g.sonokai_enable_italic = 1
			vim.g.sonokai_cursor = "orange"
			vim.g.sonokai_show_eob = 0
			vim.g.sonokai_diagnostic_text_highlight = 1
			vim.g.sonokai_diagnostic_line_highlight = 1
			vim.g.sonokai_diagnostic_virtual_text = "colored"

			vim.cmd([[colorscheme sonokai]])
		end,
	},
	{
		-- "neanias/everforest-nvim",
		"sainnhe/everforest",
		version = false,
		enabled = false,
		lazy = false,
		priority = 1000, -- make sure to load this before all the other start plugins
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			vim.g.everforest_enable_italic = 1
			vim.g.everforest_diagnostic_text_highlight = 1
			vim.g.everforest_show_eob = 0
			vim.cmd([[colorscheme everforest]])
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		enabled = false,
		priority = 1000,
		config = function()
			require("onedarkpro").setup({
				options = {
					cursorline = true,
				},
			})
			require("onedarkpro.config").set_theme("onedark_dark")
			require("onedarkpro").load()
			vim.cmd("colorscheme onedark_dark")
		end,
	},
	{
		"folke/tokyonight.nvim",
		enabled = true,
		config = function()
			require("tokyonight").setup({
				style = "night",
				on_highlights = function(hl, c)
					local prompt = "#2d3149"
					hl.TelescopeNormal = {
						bg = c.bg_dark,
						fg = c.fg_dark,
					}
					hl.TelescopeBorder = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
					hl.TelescopePromptNormal = {
						bg = prompt,
					}
					hl.TelescopePromptBorder = {
						bg = prompt,
						fg = prompt,
					}
					hl.TelescopePromptTitle = {
						bg = prompt,
						fg = prompt,
					}
					hl.TelescopePreviewTitle = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
					hl.TelescopeResultsTitle = {
						bg = c.bg_dark,
						fg = c.bg_dark,
					}
				end,
			})
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
