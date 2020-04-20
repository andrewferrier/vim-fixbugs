if exists('g:loaded_fixbugs') || &compatible
    finish
endif
let g:loaded_fixbugs = 1

augroup fixbugs_init
    " Marks don't get deleted persistently when exiting vim

    autocmd VimLeavePre * wviminfo!

    " Bug on OS X with crontab -e
    "
    " See: http://vim.wikia.com/wiki/Editing_crontab

    autocmd BufEnter /private/tmp/crontab.* setlocal backupcopy=yes

    " Comment string is not set correctly in crontabs

    autocmd FileType crontab setlocal commentstring=#\ %s
augroup END
