" Neoformat
let g:neoformat_enabled_python = ['sqlformat', 'uncrustify', 'autopep8', 'yapf', 'docformatter']

" enabe basic format
" Enable alignment
"let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
"let g:neoformat_enabled_golang = ['goimports']

" Neomake auto linting
" When writing a buffer (no delay).
call neomake#configure#automake('nrwi', 500)
" auto open Neomake messages
let g:neomake_open_list = 2

" autostart colorfull idention
let g:indent_guides_enable_on_vim_startup = 1

" hcl formatter
let g:hcl_fmt_autosave = 0
let g:tf_fmt_autosave = 0
let g:nomad_fmt_autosave = 0

" dont autosave json indented
let g:jfmt_on_save = 1
let g:jfmt_autofmt  = 1
