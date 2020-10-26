let g:airline_theme='sonokai' " <theme> is a valid theme name
let g:airline_powerline_fonts = 1

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
let g:sonokai_transparent_background = 0

hi HighlightedyankRegion cterm=reverse gui=reverse

set background=dark " use dark mode
" set background=light " uncomment to use light mode

hi Normal guibg=NONE ctermbg=NONE

colorscheme sonokai

