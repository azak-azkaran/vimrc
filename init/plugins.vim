"
""" PLUGINS
"

" Required:
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Dein update ui call with ":DeinUpdate"
    call dein#add('wsdjeg/dein-ui.vim')

    call dein#add('scrooloose/nerdtree')
    call dein#add('tpope/vim-surround')
    call dein#add('tpope/vim-repeat')

    " git plugin
    call dein#add('tpope/vim-fugitive')
    call dein#add('gregsexton/gitv')

    " Autocompletion with Languages servers and plugins
    "call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release' })

    " fzf
    call dein#add('junegunn/fzf.vim')

    " tagbar using ctags
    call dein#add('preservim/tagbar')

    " linting with neomake
    call dein#add('neomake/neomake')

    " easer navigation in help files
    call dein#add('dahu/vim-help')

    " autoformater
    call dein#add('sbdchd/neoformat')

    " colorfull indention
    call dein#add('nathanaelkane/vim-indent-guides')

    " tmux integration
    call dein#add('preservim/vimux')

    " vim airline for design solarized for colors
    call dein#add('bling/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')

    " modern solarized with true color
    call dein#add('lifepillar/vim-solarized8')

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

    " go support"
    call dein#add('sebdah/vim-delve')

    " hcl syntax
    call dein#add('fatih/vim-hclfmt')

    " syntax highlight plugins
    call dein#add('sheerun/vim-polyglot' )

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
    call dein#add('Shougo/deoplete.nvim')
    " tmux autocompletion
    call dein#add('wellle/tmux-complete.vim')
    " Jedi autocompletion
    call dein#add('zchee/deoplete-jedi')
    " Clang autocompletion
    call dein#add('zchee/deoplete-clang')
    " java deoplete
    call dein#add('artur-shaik/vim-javacomplete2')
    " tabnine support
    call dein#add('tbodt/deoplete-tabnine', {'build': './install.sh'})

    " Autocompletion with Languages servers
    call dein#add('autozimu/LanguageClient-neovim', {'rev': 'next','build': './install.sh'})


    " for snipppes
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    " popular snippets
    call dein#add('honza/vim-snippets')

    " Flutter
    "call dein#add('thosakwe/vim-flutter')


    " Required:
    call dein#end()
    call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif


