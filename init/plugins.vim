"
""" PLUGINS
"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Required:
call plug#begin('~/.vim/autoload')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" git plugin
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'

" Autocompletion with Languages servers and plugins
"Plug 'neoclide/coc.nvim', { 'merged': 0, 'rev': 'release' }

" fzf
Plug 'junegunn/fzf.vim'

" tagbar using ctags
Plug 'preservim/tagbar'

" linting with neomake
Plug 'neomake/neomake'

" easer navigation in help files
Plug 'dahu/vim-help'

" autoformater
Plug 'sbdchd/neoformat'

" colorfull indention
Plug 'nathanaelkane/vim-indent-guides'

" tmux integration
Plug 'benmills/vimux'

" vim airline for design solarized for colors
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" modern solarized with true color
Plug 'lifepillar/vim-solarized8'

" Plugin for indention json
Plug 'bcicen/vim-jfmt'

" better start menue
Plug 'mhinz/vim-startify'

" support for nerd Font: https://github.com/ryanoasis/nerd-fonts
Plug 'ryanoasis/vim-devicons'

" add automatic pairs for ( / and stuff
Plug 'jiangmiao/auto-pairs'

" kills buffer without closing window
Plug  'qpkorr/vim-bufkill' 

" webapi for gist-vim
Plug  'mattn/webapi-vim' 
Plug  'mattn/gist-vim' 

" go support"
Plug 'sebdah/vim-delve'

" hcl syntax
Plug 'fatih/vim-hclfmt'

" syntax highlight plugins
Plug 'sheerun/vim-polyglot' 

" Syntax highlight plugins used by polyglot
"call dein#add('dart-lang/dart-vim-plugin') "Flutter"
"call dein#add('ekalinin/Dockerfile.vim') "Dockerfile"
"call dein#add('fatih/vim-go') "go support""
"call dein#add('cespare/vim-toml') "toml support"
"call dein#add( 'pearofducks/ansible-vim') "ansible support""
"call dein#add('othree/xml.vim') "xml support"
"call dein#add('plasticboy/vim-markdown') "markdown plugins"
"call dein#add('elzr/vim-json') "json support"
" better nginx config support
" call dein#add('chase/nginx.vim')
" call dein#add('chr4/nginx.vim')

" autocompletion
Plug 'Shougo/deoplete.nvim'
" tmux autocompletion
Plug 'wellle/tmux-complete.vim'
" Jedi autocompletion
Plug 'zchee/deoplete-jedi'
" Clang autocompletion
Plug 'zchee/deoplete-clang'
" java deoplete
Plug 'artur-shaik/vim-javacomplete2'
" tabnine support
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }

" Autocompletion with Languages servers
Plug 'autozimu/LanguageClient-neovim', {
\ 'branch': 'next',
\ 'do': 'bash install.sh',
\ }


" for snipppes
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" popular snippets
Plug 'honza/vim-snippets'

" Flutter
"call dein#add('thosakwe/vim-flutter')


" Required:
call plug#end()


