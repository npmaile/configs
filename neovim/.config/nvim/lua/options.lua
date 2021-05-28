--mouse usage
vim.o.mouse = 'a'
--add recursive search to path
vim.o.path = vim.o.path .. ',**'
--use clipboard as plus and star registers
vim.o.clipboard = 'unnamedplus'

--wildcard ignore case
vim.o.wic = true
