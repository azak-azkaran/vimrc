" Run the current file with rspec
"map <F3> :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
map <F2> :call VimuxPromptCommand()<CR>


" Run command without sending a return
"map <Leader>rq :call VimuxRunCommand("clear; rspec " . bufname("%"), 0)<CR>
" Run last command executed by VimuxRunCommand
map <F3> :VimuxRunLastCommand<CR>
" Close vim tmux runner opened by VimuxRunCommand
"map <F5> :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <F4> :VimuxInterruptRunner<CR>

