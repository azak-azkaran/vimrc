" standard configuration
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set encoding=UTF-8
set spelllang=en_us

" share clipboard
set clipboard=unnamedplus

" auto fold xml and change folding to syntax for xml files
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
" to auto load and auto save folds
au BufWinLeave *.* mkview

" Use the https://github.com/BurntSushi/ripgrep if possible (much faster than Ack)
if executable('rg')
    let g:ackprg = 'rg --vimgrep --smart-case'
endif
