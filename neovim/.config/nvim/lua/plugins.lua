vim.api.nvim_call_function("plug#begin", {"~/.vim/plugged"})
vim.cmd [[
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'jamessan/vim-gnupg'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'onsails/lspkind.nvim'
Plug 'simrat39/rust-tools.nvim'
]]
vim.api.nvim_call_function("plug#end", {})
