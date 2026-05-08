require('plugins')
require('options')
require('keymap')
require('lsp')
require('nvim-cmp')
require('relativenumber')
require('noswap')
require('statusline')
require('netrw')
require('colors')

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    local ok = pcall(vim.treesitter.start)
    if not ok then
      -- Parser not available for this filetype
    end
  end,
})
