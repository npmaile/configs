vim.api.nvim_call_function("plug#begin", {"~/.vim/plugged"})
vim.cmd [[
Plug 'neovim/nvim-lspconfig'
Plug 'jamessan/vim-gnupg'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'simrat39/rust-tools.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
]]
vim.api.nvim_call_function("plug#end", {})
