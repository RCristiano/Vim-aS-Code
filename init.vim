call plug#begin('~/.local/share/nvim/plugged')

" Python
" --------------------------------------------------------------
" Plug 'davidhalter/jedi-vim' 					" https://github.com/davidhalter/jedi
" Plug 'zchee/deoplete-jedi'					" https://github.com/deoplete-plugins/deoplete-jedi
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}		" https://github.com/numirias/semshi
" Plug 'jmcantrell/vim-virtualenv'				" https://github.com/jmcantrell/vim-virtualenv
" Plug 'tmhedberg/SimpylFold'					" https://github.com/tmhedberg/SimpylFold


" Features
" --------------------------------------------------------------
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }	" https://github.com/Shougo/deoplete.nvim

" Verify if both of these are required
Plug 'vim-airline/vim-airline'					" https://github.com/vim-airline/vim-airline
Plug 'powerline/powerline'					" https://github.com/powerline/powerline

Plug 'jiangmiao/auto-pairs'					" https://github.com/jiangmiao/auto-pairs
Plug 'tpope/vim-surround' 					" https://github.com/tpope/vim-surround
Plug 'scrooloose/nerdcommenter'					" https://github.com/preservim/nerdcommenter
Plug 'sbdchd/neoformat'						" https://github.com/sbdchd/neoformat
Plug 'scrooloose/nerdtree'					" https://github.com/preservim/nerdtree
Plug 'neomake/neomake'						" https://github.com/neomake/neomake
Plug 'mg979/vim-visual-multi', {'branch': 'master'}             " https://github.com/mg979/vim-visual-multi
Plug 'machakann/vim-highlightedyank'				" https://github.com/machakann/vim-highlightedyank

" Verify if both of these are required
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }		" https://github.com/junegunn/fzf
Plug 'kien/ctrlp.vim'						" https://github.com/kien/ctrlp.vim
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }		" https://github.com/Yggdroot/LeaderF

Plug 'majutsushi/tagbar' 					" https://github.com/preservim/tagbar
Plug 'tpope/vim-fugitive'					" https://github.com/tpope/vim-fugitive
Plug 'scrooloose/syntastic'					" https://github.com/vim-syntastic/syntastic
Plug 'xuyuanp/nerdtree-git-plugin'				" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'myusuf3/numbers.vim'					" https://github.com/myusuf3/numbers.vim
Plug 'godlygeek/tabular'					" https://github.com/godlygeek/tabular
Plug 'thaerkh/vim-workspace'					" https://github.com/thaerkh/vim-workspace

" This is breaking markdown fold! -- FIX REQUIRED
" Plug 'plasticboy/vim-markdown'					" https://github.com/plasticboy/vim-markdown

Plug 'wincent/terminus'						" https://github.com/wincent/terminus
Plug 'airblade/vim-gitgutter'					" https://github.com/airblade/vim-gitgutter
Plug 'mhinz/vim-signify'					" https://github.com/mhinz/vim-signify

" Themes
" --------------------------------------------------------------
" Plug 'morhetz/gruvbox'					" https://github.com/morhetz/gruvbox
" Plug 'vim-airline/vim-airline-themes'				" https://github.com/vim-airline/vim-airline-themes
" Plug 'phanviet/vim-monokai-pro'				" https://github.com/phanviet/vim-monokai-pro
" Plug 'sickill/vim-monokai'					" https://github.com/sickill/vim-monokai
Plug 'sainnhe/sonokai'						" https://github.com/sainnhe/sonokai
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 			" https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
Plug 'ryanoasis/vim-devicons'   				" https://github.com/ryanoasis/vim-devicons


" Plug 'voldikss/vim-floaterm'					" https://github.com/voldikss/vim-floaterm

call plug#end()

" Configs
" --------------------------------------------------------------

set shiftwidth=4

" This configuration must be used when working with virtual envs
" https://github.com/deoplete-plugins/deoplete-jedi#virtual-environments
" let g:python_host_prog = '~/.asdf/shims/python2'
" let g:python3_host_prog = '~/.asdf/shims/python'

let g:deoplete#enable_at_startup = 1

let g:airline_theme='sonokai' " <theme> is a valid theme name
let g:airline_powerline_fonts = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:floaterm_keymap_toggle = '<F12>'
" let g:floaterm_autoclose = 1
" nnoremap <leader>; :FloatermNew --wintype=window --height=10<CR>

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

call neomake#configure#automake('nrwi', 500)


hi HighlightedyankRegion cterm=reverse gui=reverse

" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

set background=dark " use dark mode
" set background=light " uncomment to use light mode

" Python
" --------------------------------------------------------------

" disable autocompletion, cause we use deoplete for completion
" let g:jedi#completions_enabled = 0 

" open the go-to function in split, not another buffer
" let g:jedi#use_splits_not_buffers = "right"

" let g:neomake_python_enabled_makers = ['pylint']

" --------------------------------------------------------------

let g:airline_left_sep = "\uE0B8"
let g:airline_right_sep = "\uE0BA"

let g:airline#extensions#tabline#left_sep = "\uE0BC"
let g:airline#extensions#tabline#right_sep = "\uE0BE"



" Important!! For sonokai
if has('termguicolors')
	set termguicolors
endif
" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:sonokai_transparent_background = 1

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

hi Normal guibg=NONE ctermbg=NONE
