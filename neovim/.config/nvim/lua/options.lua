--mouse usage
vim.o.mouse = 'a'
--add recursive search to path
vim.o.path = vim.o.path .. ',**'
--use clipboard as plus and star registers
vim.o.clipboard = 'unnamedplus'

-- buffer on bottom and top when scrolling
vim.o.scrolloff = 4
vim.cmd('highlight WinSeparator guibg=None')

--wildcard ignore case
vim.o.wic = true

--Escape leaves input mode in neovim-terminal
vim.api.nvim_set_keymap('t', '<Esc>','<c-\\><C-n>',{})

-- global status line
vim.o.laststatus = 3

-- make harpoon useless
vim.cmd('autocmd BufEnter * norm \'"')
