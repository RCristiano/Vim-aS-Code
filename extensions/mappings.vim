autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

nnoremap <silent> <leader>l :Leaderf command<CR>
nnoremap <silent> <leader>t :Leaderf bufTag<CR>

nmap <silent> <F8> :TagbarToggle<CR>

nmap <silent> <leader>bd :bd #<CR>

" Buffers shortcuts
" To open a new empty buffer
nmap <silent> <leader>{ :enew<cr>

" Move to the next buffer
nmap <silent> <leader>] :bnext<CR>

" Move to the previous buffer
nmap <silent> <leader>[ :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <silent> <leader>} :bp <BAR> bd #<CR>

" Show all open buffers and their status
" nmap <leader>bl :ls<CR>
