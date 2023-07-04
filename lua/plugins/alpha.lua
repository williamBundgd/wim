return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	opts = function()
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.buttons.val = {
			dashboard.button("SPC s r", "🔄 " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
			dashboard.button("SPC e", "🌲 " .. " Serch tree", ":NvimTreeToggle <CR>"),
			dashboard.button("SPC f f", "🔍 " .. " Find file", ":Telescope find_files <CR>"),
			dashboard.button("SPC f r", "📂 " .. " Recent files", ":Telescope oldfiles <CR>"),
			dashboard.button("SPC f n", "📄 " .. " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("SPC f c", "⚙️  " .. " Config", ":e $MYVIMRC <CR>"),
			dashboard.button("q", "👋 " .. " Quit", ":qa<CR>"),
		}
		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = "AlphaButtons"
			button.opts.hl_shortcut = "AlphaShortcut"
		end
		dashboard.section.footer.opts.hl = "Type"
		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.opts.hl = "AlphaButtons"
		dashboard.opts.layout[1].val = 8

		dashboard.section.header.val = {
                        [[ ██   ██       ████████       ██      ██       ██       ████     ████]],
                        [[░██  ██       ░██░░░░░       ░██     ░██      ░██      ░██░██   ██░██]],
                        [[░██ ██        ░██            ░██     ░██      ░██      ░██░░██ ██ ░██]],
                        [[░████         ░███████       ░░██    ██       ░██      ░██ ░░███  ░██]],
                        [[░██░██        ░██░░░░         ░░██  ██        ░██      ░██  ░░█   ░██]],
                        [[░██░░██       ░██              ░░████         ░██      ░██   ░    ░██]],
                        [[░██ ░░██      ░████████         ░░██          ░██      ░██        ░██]],
                        [[░░   ░░       ░░░░░░░░           ░░           ░░       ░░         ░░ ]],
		}

		return dashboard
	end,
	config = function(_, dashboard)
		vim.b.miniindentscope_disable = true

		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				pattern = "AlphaReady",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
