-- window options
vim.api.nvim_set_keymap('n', '<leader>h','<C-w>h',{}) 
vim.api.nvim_set_keymap('n', '<leader>j','<C-w>j',{}) 
vim.api.nvim_set_keymap('n', '<leader>k','<C-w>k',{}) 
vim.api.nvim_set_keymap('n', '<leader>l','<C-w>l',{}) 

vim.api.nvim_set_keymap('n', '<up>', ':resize +5<CR>',{})
vim.api.nvim_set_keymap('n', '<down>', ':resize -5<CR>',{})
vim.api.nvim_set_keymap('n', '<left>', ':vertical resize -5<CR>',{})
vim.api.nvim_set_keymap('n', '<right>', ':vertical resize +5<CR>',{})

--Escape leaves input mode in neovim-terminal
vim.api.nvim_set_keymap('t', '<Esc>','<c-\\><C-n>',{})

--Fin with f
vim.api.nvim_set_keymap('n', '<leader>f',':find ',{})
--Edit with e
vim.api.nvim_set_keymap('n', '<leader>e',':edit ',{})
