call plug#begin('~/.local/share/nvim/plugged')

" Plugs
" ==============================================================
source $PWD/extensions/features.vim
source $PWD/extensions/visual.vim
source $PWD/extensions/python.vim

call plug#end()

" Configurations 
" ==============================================================
source $PWD/extensions/features_cfg.vim
source $PWD/extensions/visual_cfg.vim
source $PWD/extensions/mappings.vim

" Language Especific
" --------------------------------------------------------------
source $PWD/extensions/python_cfg.vim
