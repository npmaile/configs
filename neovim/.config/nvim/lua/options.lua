--mouse usage
vim.o.mouse = 'a'

--add recursive search to path
vim.o.path = '.,**,,'

--use clipboard as plus and star registers
vim.o.clipboard = 'unnamedplus'

-- buffer on bottom and top when scrolling
vim.o.scrolloff = 4

-- clean up window separator
vim.cmd('highlight WinSeparator guibg=None')

--wildcard ignore case
vim.o.wic = true

-- global status line
vim.o.laststatus = 3

-- make harpoon useless
vim.cmd('autocmd BufReadPost * norm \'"')

-- set leader
vim.g.mapleader = ','

-- don't split on word when wrapping lines
vim.o.linebreak = true

