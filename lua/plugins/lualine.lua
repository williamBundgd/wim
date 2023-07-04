return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	config = function()
		--local colors = require("onedarkpro.helpers").get_colors("onedark_dark")
		-- local config = require("onedarkpro.config").config

		-- local onedarkpro = {}
		--
		-- onedarkpro.normal = {
		-- 	a = { bg = colors.green, fg = colors.bg },
		-- 	b = { bg = colors.bg, fg = colors.green },
		-- 	c = { bg = colors.bg, fg = colors.fg },
		-- }
		--
		-- onedarkpro.insert = {
		-- 	a = { bg = colors.blue, fg = colors.bg },
		-- 	b = { bg = colors.fg_gutter, fg = colors.blue },
		-- }
		--
		-- onedarkpro.command = {
		-- 	a = { bg = colors.purple, fg = colors.bg },
		-- 	b = { bg = colors.fg_gutter, fg = colors.purple },
		-- }
		--
		-- onedarkpro.visual = {
		-- 	a = { bg = colors.yellow, fg = colors.bg },
		-- 	b = { bg = colors.fg_gutter, fg = colors.yellow },
		-- }
		--
		-- onedarkpro.replace = {
		-- 	a = { bg = colors.red, fg = colors.bg },
		-- 	b = { bg = colors.fg_gutter, fg = colors.red },
		-- }
		--
		-- local inactive_bg = config.options.highlight_inactive_windows and colors.color_column or colors.bg
		-- onedarkpro.inactive = {
		-- 	a = { bg = colors.bg, fg = colors.blue },
		-- 	b = { bg = colors.bg, fg = colors.fg_gutter_inactive, gui = "bold" },
		-- 	c = { bg = colors.bg, fg = colors.fg_gutter_inactive },
		-- }
		--
		require("lualine").setup({
			options = {
				-- theme = onedarkpro,
				globalstatus = true,
				disabled_filetypes = { statusline = { "dashboard", "lazy", "mason", "alpha" } },
			},
		})
	end,
}
