if &compatible
	set nocompatible               " Be iMproved
endif

" sets virtualenv 
let g:python3_host_prog = '/home/awieland/env/bin/python'
" Required:
set runtimepath+=/home/awieland/.cache/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=/home/awieland/.fzf
"set runtimepath+=/home/awieland/.cache/dein/repos/github.com/stamblerre/gocode/nvim/symlink.sh

" Required:
if dein#load_state('/home/awieland/.cache/dein')
call dein#begin('/home/awieland/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/awieland/.cache/dein/repos/github.com/Shougo/dein.vim')

"""  "PLUGINS"
" Add or remove your plugins here:
" for snipppes
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
" popular snippets
call dein#add('honza/vim-snippets')

call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-repeat')

" git plugin
call dein#add('tpope/vim-fugitive')
call dein#add('gregsexton/gitv')

" autocompletion
call dein#add('Shougo/deoplete.nvim')
" tmux autocompletion
call dein#add('wellle/tmux-complete.vim')
" Jedi autocompletion
"call dein#add('zchee/deoplete-jedi')
call dein#add('azak-azkaran/deoplete-jedi')
" golang autocompletion
"call dein#add('deoplete-plugins/deoplete-go', {'build': 'make'})
" Clang autocompletion
call dein#add('zchee/deoplete-clang')
" java deoplete
call dein#add('artur-shaik/vim-javacomplete2')

" Lisp client
call dein#add('autozimu/LanguageClient-neovim', {'rev': 'next', 'build': 'install.sh'})

" tabNine
call dein#add('tbodt/deoplete-tabnine', { 'build': './install.sh' })

" fzf 
call dein#add('junegunn/fzf.vim')

" tagbar using ctags
call dein#add('majutsushi/tagbar')

" linting with neomake
call dein#add('neomake/neomake')

" easer navigation in help files
call dein#add('dahu/vim-help')

" autoformater
call dein#add('sbdchd/neoformat')
 
" colorfull indention
call dein#add('nathanaelkane/vim-indent-guides')

" tmux integration
call dein#add('benmills/vimux')

" vim airline for design solarized for colors
call dein#add('bling/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" call dein#add('altercation/vim-colors-solarized')
call dein#add('frankier/neovim-colors-solarized-truecolor-only')

" colorscheme
call dein#add('chriskempson/base16-vim')

" json support
call dein#add('elzr/vim-json')
" Plugin for indention json
call dein#add('bcicen/vim-jfmt')

" better start menue
call dein#add('mhinz/vim-startify')

" support for nerd Font: https://github.com/ryanoasis/nerd-fonts
call dein#add('ryanoasis/vim-devicons')

" add automatic pairs for ( / and stuff
call dein#add('jiangmiao/auto-pairs')

" kills buffer without closing window
call dein#add( 'qpkorr/vim-bufkill' )

" webapi for gist-vim
call dein#add( 'mattn/webapi-vim' )
call dein#add( 'mattn/gist-vim' )
" You can specify revision/branch/tag.
"call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9'})

" markdown plugins
call dein#add('plasticboy/vim-markdown')
"call dein#add('junegunn/goyo.vim')
"call dein#add('junegunn/limelight.vim')

call dein#add('othree/xml.vim')

" better nginx config support 
" call dein#add('chase/nginx.vim')
"call dein#add('chr4/nginx.vim')
" better yaml support
call dein#add('chase/vim-ansible-yaml')

" go support"
call dein#add('sebdah/vim-delve')
call dein#add('fatih/vim-go')
"call dein#add('stamblerre/gocode')

" ack
call dein#add('mileszs/ack.vim')

" Required:
call dein#end()
call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

""" "CONFIGURATION"

" standard configuration
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set number
set encoding=UTF-8

" starts deoplete on start
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
"call deoplete#custom#source('jedi', 'debug_enabled', 1)
"call deoplete#enable_logging('DEBUG', '/tmp/deoplete.log')

let g:LanguageClient_serverCommands = {
    \ 'go': ['~/go/bin/gopls'],
    \ 'python': ['~/bin/pyls'],
    \ }

" autostart colorfull idention
let g:indent_guides_enable_on_vim_startup = 1

" closes scratch window on the top
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Neoformat
let g:neoformat_enabled_python = ['sqlformat', 'uncrustify', 'autopep8', 'yapf', 'docformatter']
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" Neomake auto linting
" When writing a buffer (no delay).
call neomake#configure#automake('w')
" auto open Neomake messages
let g:neomake_open_list = 0

"  omnifuncs
set omnifunc=syntaxcomplete#Complete
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

set spelllang=en_us
" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" solarized
set termguicolors
let base16colorspace=256
set background=light
" colorscheme base16-default-dark
"
colorscheme solarized

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

" start limelight on Goyo mode
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!
"let g:limelight_conceal_ctermfg = 241

" auto fold xml and change folding to syntax for xml files
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax
" to auto load and auto save folds
au BufWinLeave *.* mkview

" share clipboard 
set clipboard=unnamedplus

" make vim transparent
hi Normal guibg=NONE ctermbg=NONE

" Use the https://github.com/BurntSushi/ripgrep if possible (much faster than Ack)
if executable('rg')
    let g:ackprg = 'rg --vimgrep --smart-case'
endif

" dont autosave json indented
let g:jfmt_on_save = 1
let g:jfmt_autofmt  = 1

" vim-go
let g:go_metalinter_command ="golangci-lint"
let g:go_metalinter_autosave = 1
"let g:go_list_type = 'quickfix'

""" "KEY BINDINGS"
"
let mapleader = ","
imap <C-L> <Esc>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr><C-Space> deoplete#manual_complete()

" opens Tag
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" GIT keys
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gr :Gremove<CR>
autocmd BufReadPost fugitive://* set bufhidden=delete
nnoremap <silent> <leader>gv :Gitv<CR>
nnoremap <silent> <leader>gV :Gitv!<CR>

" Toggle spell checking on and off with `,s`
map <leader>s :set spell!<CR>
map <leader>g gq}<CR>
map <leader>d ]S
map <leader>a [S
map <leader>w z=
map <leader>x :%!xmllint --format %<CR>

" Normale Mode fast save
nmap <leader>, :w!<cr>

" next Buffer
map <leader>l     :bn<CR>
" previous Buffer
map <leader>h     :bp<CR>
" Buf kill
map <leader>e     :BD<CR>

"fast switch between splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l

" change airline tabs
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" open nerdtree
map <leader>tt :NERDTreeToggle<cr>
map <leader>tb :NERDTreeFromBookmark
map <leader>tf :NERDTreeFind<cr>

" deletes empty lines
command DeleteEmptyLine :g/^$/d

"vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" search for marked string in visual mode
vnoremap <leader>f "hy/<C-r>h/<CR>

" search and repleace in visual mode
" By pressing ctrl+r in visual mode, you will be prompted to enter text to replace with.
" Press enter and then confirm each change you agree with y or decline with n.
vnoremap <leader>r "hy:%s/<C-r>h//gc<left><left><left>
"vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" search in visual mode
" By pressing ctrl+d in visual mode, you will be prompted to enter text to
" replace with. Press enter and then confirm each change you agree with y or decline with n.
vnoremap <C-d> "hy:g/.*<C-r>h.*/d<CR>


" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

"command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

" map find to rg 
map <leader>rg :Find 

" Run the current file with rspec
"map <F3> :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
map <F2> :call VimuxPromptCommand()<CR>
map <F5> :call VimuxRunCommand("" . bufname("%"))<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
"augroup compiler
"  autocmd!
"  autocmd FileType python map <F3> :call VimuxRunCommand("python " . bufname("%"))<CR>
"  autocmd FileType ruby map <F3> :call VimuxRunCommand("ruby " . bufname("%"))<CR>
"  autocmd F
"augroup end

" Run command without sending a return
"map <Leader>rq :call VimuxRunCommand("clear; rspec " . bufname("%"), 0)<CR>
" Run last command executed by VimuxRunCommand
map <F3> :VimuxRunLastCommand<CR>
" Close vim tmux runner opened by VimuxRunCommand
"map <F5> :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <F4> :VimuxInterruptRunner<CR>

" starts Terminal
map <F8> :terminal<CR>

" starts tagbar
map <F6> :TagbarToggle<CR>

" Plugin key-mappings. for neosnippet
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
