set shiftwidth=4

" This configuration is needed to fix broken auto-markdown
let g:vim_markdown_folding_style_pythonic = 1

let g:deoplete#enable_at_startup = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:floaterm_keymap_toggle = '<F12>'
" let g:floaterm_autoclose = 1
" nnoremap <leader>; :FloatermNew --wintype=window --height=10<CR>

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" call neomake#configure#automake('nrwi', 500)

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

let g:Lf_WindowPosition = 'popup'
" nnoremap <silent> <leader>f :Leaderf file<CR>
let g:Lf_StlSeparator = { 'left': "\uE0B8", 'right': "\uEBA", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PopupColorscheme = 'gruvbox_default'

set updatetime=100
let g:gitgutter_preview_win_floating = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


