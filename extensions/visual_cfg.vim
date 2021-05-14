let g:airline_theme='tokyonight' " <theme> is a valid theme name
let g:airline_powerline_fonts = 1

" Rounded seps
" let g:airline_left_sep = "\uE0B4"
" let g:airline_right_sep = "\uE0B6"
" let g:airline#extensions#tabline#left_sep = "\uE0B4"
" let g:airline#extensions#tabline#left_alt_sep = "\uE0B5"
" let g:airline#extensions#tabline#right_sep = "\uE0B6"
" let g:airline#extensions#tabline#right_alt_sep = "\uE0B7"

let g:airline_left_sep = ""
let g:airline_right_sep = ""
let g:airline#extensions#tabline#right_sep = ""
let g:airline#extensions#tabline#right_alt_sep = ""
let g:airline#extensions#tabline#left_sep = ""
let g:airline#extensions#tabline#left_alt_sep = ""

" Important!! For sonokai / tokyonight
if has('termguicolors')
	set termguicolors
endif

hi HighlightedyankRegion cterm=reverse gui=reverse
hi Normal guibg=NONE ctermbg=NONE

" # CONFIGS TO SONOKAI

" The configuration options should be placed before `colorscheme sonokai`.
" let g:sonokai_style = 'andromeda' " available: default, atlantis, andromeda, shusia, maia
" let g:sonokai_enable_italic = 1
" let g:sonokai_disable_italic_comment = 1
" let g:sonokai_transparent_background = 1

" set background=dark " use dark mode
" set background=light " uncomment to use light mode

" silent! colorscheme sonokai

" # END SONOKAI CONFIGS

" # CONFIGS TO TOKYONIGHT

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1

silent! colorscheme tokyonight

" # END TOKYO NIGHT CONFIGS

" LeaderF
" let g:Lf_StlSeparator = { 'left': "\uE0B4", 'right': "\uEB6", 'font': "DejaVu Sans Mono for Powerline" } " rounded seps
let g:Lf_StlSeparator = { 'left': "", 'right': "", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PopupColorscheme = 'gruvbox_default'

" Dashboard

