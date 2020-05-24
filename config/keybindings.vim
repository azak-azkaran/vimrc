let mapleader = ","

"
" KEY BINDINGS
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


" Run command without sending a return
"map <Leader>rq :call VimuxRunCommand("clear; rspec " . bufname("%"), 0)<CR>
" Run last command executed by VimuxRunCommand
map <F3> :VimuxRunLastCommand<CR>
" Close vim tmux runner opened by VimuxRunCommand
"map <F5> :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <F4> :VimuxInterruptRunner<CR>

" starts nerdtree
map <F5> :NERDTreeToggle<CR>

" starts Ctag
map <F6> :Ctag<CR>


" starts terminal
map <F7> :terminal<CR>

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
