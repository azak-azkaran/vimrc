imap <C-L> <Esc>

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr><C-Space> deoplete#manual_complete()

" Toggle spell checking on and off with `,s`
map <leader>s :set spell!<CR>
map <leader>d ]S
map <leader>a [S
map <leader>w z=

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
map <F5> :NERDTreeToggle<CR>
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

" search in visual mode
" By pressing ctrl+d in visual mode, you will be prompted to enter text to
" replace with. Press enter and then confirm each change you agree with y or decline with n.
vnoremap <C-d> "hy:g/.*<C-r>h.*/d<CR>

" starts Ctag
map <F6> :TagbarToggle<CR>

" starts terminal
map <F7> :terminal<CR>
