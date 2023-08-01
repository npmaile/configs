local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/nvim-cmp",
	"hrsh7th/vim-vsnip",
	"hrsh7th/vim-vsnip-integ",
	"jamessan/vim-gnupg",
	"junegunn/fzf",
	"junegunn/fzf.vim",
	"kyazdani42/nvim-web-devicons",
	"neovim/nvim-lspconfig",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
	"onsails/lspkind.nvim",
	"simrat39/rust-tools.nvim",
	"folke/tokyonight.nvim",
})
