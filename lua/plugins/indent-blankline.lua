-- Indent guides for Neovim
return  {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
	event = { "BufReadPost", "BufNewFile" },
	opts = {},
}
