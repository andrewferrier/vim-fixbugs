if exists('g:loaded_fixbugs') || &cp
    finish
endif
let g:loaded_fixbugs = 1

" Marks don't get deleted persistently when exiting vim
"
" See: https://groups.yahoo.com/neo/groups/vimdev/conversations/topics/68117

au VimLeavePre * wviminfo!

" Bug on OS X with crontab -e
"
" See: http://vim.wikia.com/wiki/Editing_crontab

autocmd BufEnter /private/tmp/crontab.* setlocal backupcopy=yes

" Comment string is not set correctly in crontabs

autocmd FileType crontab setlocal commentstring=#\ %s
