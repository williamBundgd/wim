-- Mappings not done in configuration files are general mappings.
-- Otherwise, all mappings will be done in the plugins respective
-- configuration files.


-- Make the key mappings here

-----------------
-- Visual Mode --
-----------------

-- Better indenting (don't go out of visual mode when indenting)
-- vim.keymap.set("v", "<", "<gv")
-- vim.keymap.set("v", ">", ">gv")

-----------------
-- Normal Mode --
-----------------
-- Resize windows with Ctrl + Arrows
--
-- vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>")
-- vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>")
-- vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +2<CR>")
-- vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -2<CR>")

-- eazy appen a comment
-- vim.keymap.set("n", "gca", "<cmd>normal gcA<CR> a")

-- Cycle buffer
vim.keymap.set("n", "<Tab>", "<cmd>bn<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", "<cmd>bp<CR>", { silent = true })

-----------------
-- Insert Mode --
-----------------
