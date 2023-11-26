" starts deoplete on start
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1

let g:deoplete#sources#go#gocode_binary = '/home/andy/go/bin/gocode'
let g:LanguageClient_serverCommands = {
            \ 'go': ['gopls'],
            \ 'python': ['pylsp'],
            \ 'yaml': ['yaml-language-server', '--stdio'],
            \ }
call deoplete#custom#option('smart_case', v:true)

let g:LanguageClient_loggingFile = expand('~/LanguageClient.log')

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

"augroup LanguageClient_config
"    autocmd!
"    autocmd User LanguageClientStarted call YamlSetFunction()
"augroup END
