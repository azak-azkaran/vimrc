"
" standard configuration
"

if &compatible
        set nocompatible               " Be iMproved
endif

" sets virtualenv
let g:python3_host_prog = expand('~/env/bin/python')
" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=~/.fzf

execute 'source' '~/.vimrc/init/plugins.vim'

let mapleader = ","

for f in split(glob('~/.vimrc/config/*.vim'), '\n')
    exe 'source' f
endfor

" Required:
filetype plugin indent on
syntax enable
