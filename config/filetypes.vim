" treat mra files as yaml files
au BufRead,BufNewFile *.mra set filetype=yaml

au BufRead,BufNewFile *.nginx set ft=nginx
au BufRead,BufNewFile */etc/nginx/* set ft=nginx
au BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
au BufRead,BufNewFile nginx.conf set ft=nginx

" add md files as markdown for Highlighting
" treat markdown files the same
au! BufRead,BufNewFile *.markdown set filetype=markdown
au! BufRead,BufNewFile *.md       set filetype=markdown
"au BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'sql', 'yaml']

au BufNewFile,BufRead *.yaml set filetype=yaml.ansible

" teat template files like yaml files
au BufRead,BufNewFile *.yaml.j2       set filetype=yaml.ansible
au BufRead,BufNewFile *.yml.j2       set filetype=yaml.ansible
au BufRead,BufNewFile */ansible/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile */ansible/*.yaml set filetype=yaml.ansible
augroup ansible_vim_fthosts
  autocmd!
  autocmd BufNewFile,BufRead hosts setfiletype yaml.ansible
augroup END

au FileType xml setlocal foldmethod=syntax
" to auto load and auto save folds
au BufWinLeave *.* mkview


" call Neoformat on w
"augroup fmt
"    autocmd!
"    autocmd BufWritePre * undojoin | Neoformat
"augroup END
