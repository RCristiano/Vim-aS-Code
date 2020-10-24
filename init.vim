call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'

Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'phanviet/vim-monokai-pro'
Plug 'sainnhe/sonokai'

" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'powerline/powerline'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'myusuf3/numbers.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'wincent/terminus'
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'jmcantrell/vim-virtualenv'
Plug 'thaerkh/vim-workspace'
Plug 'kien/ctrlp.vim'

call plug#end()

set shiftwidth=4

let g:python_host_prog = '~/.asdf/shims/python2'
let g:python3_host_prog = '~/.asdf/shims/python'

let g:deoplete#enable_at_startup = 1

let g:airline_theme='sonokai' " <theme> is a valid theme name
let g:airline_powerline_fonts = 1

let g:airline_left_sep = "\uE0B8"
let g:airline_right_sep = "\uE0BA"

let g:airline#extensions#tabline#left_sep = "\uE0BC"
let g:airline#extensions#tabline#right_sep = "\uE0BE"

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_autoclose = 1
nnoremap <leader>; :FloatermNew --wintype=window --height=10<CR>

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"


let g:neomake_python_enabled_makers = ['pylint']

call neomake#configure#automake('nrwi', 500)

hi HighlightedyankRegion cterm=reverse gui=reverse

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

set background=dark " use dark mode
" set background=light " uncomment to use light mode

" Important!! For sonokai
if has('termguicolors')
	set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:sonokai_transparent_background = 0

colorscheme sonokai

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

let g:Lf_WindowPosition = 'popup'
" nnoremap <silent> <leader>f :Leaderf file<CR>
nnoremap <silent> <leader>l :Leaderf command<CR>
nnoremap <silent> <leader>t :Leaderf bufTag<CR>

let g:Lf_StlSeparator = { 'left': "\uE0B8", 'right': "\uEBA", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PopupColorscheme = 'gruvbox_default'

nmap <silent> <F8> :TagbarToggle<CR>

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

nmap <silent> <leader>bd :bd<CR>

