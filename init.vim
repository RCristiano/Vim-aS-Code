call plug#begin('~/.local/share/nvim/plugged')

" Plugs
" ==============================================================
source $HOME/.config/nvim/extensions/features.vim
source $HOME/.config/nvim/extensions/visual.vim
source $HOME/.config/nvim/extensions/python.vim
source $HOME/.config/nvim/extensions/go.vim
source $HOME/.config/nvim/extensions/elixir.vim


call plug#end()

" Configurations 
" ==============================================================
source $HOME/.config/nvim/extensions/features_cfg.vim
source $HOME/.config/nvim/extensions/visual_cfg.vim
source $HOME/.config/nvim/extensions/mappings.vim

" Language Especific
" --------------------------------------------------------------
source $HOME/.config/nvim/extensions/python_cfg.vim
source $HOME/.config/nvim/extensions/go_cfg.vim
