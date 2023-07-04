vim.g.mapleader = " "

local opt = vim.opt -- Suppress errors

opt.laststatus = 3 -- Global statusline
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect" -- Needed for completion
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.confirm = true -- Confirm leaving if unsaved changes
opt.cursorline = true -- Highlight current line
opt.expandtab = true -- Use spaces instead of tabs
opt.formatoptions = "jcroqlnt" -- tcqj LazyVim?
opt.ignorecase = true -- Ignore case when searching
opt.inccommand = "nosplit"
opt.laststatus = 0
opt.mouse = "a"
opt.number = true
opt.relativenumber = true
opt.pumblend = 0
opt.pumheight = 10
opt.scrolloff = 4
opt.shiftround = true
opt.signcolumn = "yes"
opt.smartcase = true -- Don't ignore when searching with capitals
opt.smartindent = true
opt.termguicolors = true
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap
opt.autochdir = true -- Changes dir when opening new file

opt.mousemoveevent = true -- For bufferline highglights

opt.splitkeep = "screen"
