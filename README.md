## vim-fixbugs

Plugin to fix some common bugs or shortcomings in vim or the way vim is set up
on various systems. In particular, it addresses:

* Mark deletion not being persisted when you restart vim.
* Crontab editing on OS X not working.

More information can be found in [the code
itself](https://github.com/andrewferrier/vim-fixbugs/blob/master/plugin/vim-fixbugs.vim),
which has references back to original sources in some cases.

## Installation

Use a vim package manager. If you don't have one,
[pathogen.vim](https://github.com/tpope/vim-pathogen) is a good place to
start. Once you've installed it, run:

    cd ~/.vim/bundle
    git clone git://github.com/andrewferrier/vim-fixbugs.git
