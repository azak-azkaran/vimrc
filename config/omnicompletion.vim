" starts deoplete on start
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1

"let g:deoplete#sources#go#gocode_binary = '/home/andy/go/bin/gocode'
let g:LanguageClient_serverCommands = {
            \ 'go': ['gopls'],
            \ 'dart': ['dart','/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot','--lsp']
            \ }
"call deoplete#custom#option('smart_case', v:true)
"


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


