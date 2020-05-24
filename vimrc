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

execute 'source' './init/plugins.vim'
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
for f in split(glob('./config/*.vim'), '\n')
    exe 'source' f
endfor

" Required:
filetype plugin indent on
syntax enable
