"hybrid numbering 
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"use mouse if you are lazy or editing one handed
set mouse=a

"recurse through directory you've opened vim in for files when using the edit
"or find commands
set path+=**


"remove swap file (i've literally never had it be anything but a problem for
"me so I'm getting rid of it)
"the next parts are necessary for this to be user friendly tho
set noswapfile

"make it reload when the file has been changed outside of vim (or in another
"vim window)
set autoread

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
    autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
            \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

"make the clipboard be system clipboard (annoying sometimes, but good most
"times)
set clipboard^=unnamed

"wildcard ignore case
set wic

com Tags !ctags -R
