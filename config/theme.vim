" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" solarized
set termguicolors
"set t_Co=256
set background=dark
colorscheme solarized8

" make vim transparent
hi Normal guibg=NONE ctermbg=NONE
