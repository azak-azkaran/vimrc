" Languages Server Keybindings
function SetLSPShortcuts()
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lv :call LanguageClient#textDocument_definition({'gotoCmd': 'vsplit'})<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  map <F6> :call LanguageClient_textDocument_documentSymbol({'gotoCmd': 'vsplit'})<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

" This will ensure that LSP shortcuts are enabled only for source files in:
augroup LSP
  autocmd!
  autocmd FileType go call SetLSPShortcuts()
  autocmd FileType yml,yaml call SetLSPShortcuts()
  autocmd FileType python call SetLSPShortcuts()
augroup END

