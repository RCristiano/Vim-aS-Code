" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }	" https://github.com/Shougo/deoplete.nvim

Plug 'glepnir/dashboard-nvim'                 " https://github.com/glepnir/dashboard-nvim
    Plug 'liuchengxu/vim-clap'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'

"" Require nvim 0.5
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

Plug 'scrooloose/nerdtree'					" https://github.com/preservim/nerdtree                             Explorer
" Plug 'neomake/neomake'						" https://github.com/neomake/neomake                            Neomake is a plugin for Vim/Neovim to asynchronously run programs.
Plug 'mg979/vim-visual-multi', {'branch': 'master'}             " https://github.com/mg979/vim-visual-multi     MULTLINE EDIT
Plug 'machakann/vim-highlightedyank'				" https://github.com/machakann/vim-highlightedyank          highlighted yank
Plug 'xuyuanp/nerdtree-git-plugin'				" https://github.com/Xuyuanp/nerdtree-git-plugin                Git support to nerdtree
Plug 'myusuf3/numbers.vim'					" https://github.com/myusuf3/numbers.vim
Plug 'godlygeek/tabular'					" https://github.com/godlygeek/tabular                              Text align

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }		" https://github.com/Yggdroot/LeaderF                   Float fzf file tags tabs ...        
Plug 'majutsushi/tagbar' 					" https://github.com/preservim/tagbar
" Plug 'liuchengxu/vista.vim'                 " https://github.com/liuchengxu/vista.vim                         tagbar (no mouse support)
" Plug 'tpope/vim-fugitive'					" https://github.com/tpope/vim-fugitive                             GIT COMMANDS IMPROVED
" Plug 'thaerkh/vim-workspace'					" https://github.com/thaerkh/vim-workspace                      PERSISTENCIA DE SESSÃO
" Plug 'plasticboy/vim-markdown'					" https://github.com/plasticboy/vim-markdown
Plug 'wincent/terminus'						" https://github.com/wincent/terminus                               Improves mouse and integration with terminal
" Plug 'airblade/vim-gitgutter'					" https://github.com/airblade/vim-gitgutter
Plug 'mhinz/vim-signify'					" https://github.com/mhinz/vim-signify                              SINAIS DIFF
Plug 'voldikss/vim-floaterm'					" https://github.com/voldikss/vim-floaterm

" Plug 'puremourning/vimspector'

Plug 'jiangmiao/auto-pairs'					" https://github.com/jiangmiao/auto-pairs                           auto {} [] ...
Plug 'tpope/vim-surround' 					" https://github.com/tpope/vim-surround                             auto quots ...
Plug 'scrooloose/nerdcommenter'					" https://github.com/preservim/nerdcommenter                    comment lines
" Plug 'sbdchd/neoformat'						" https://github.com/sbdchd/neoformat                           FORMATA CONFORME LANG EX PYTHON AUTOPEP8

Plug 'sheerun/vim-polyglot'                 "https://github.com/sheerun/vim-polyglot                             A collection of language packs for Vim.
Plug 'scrooloose/syntastic'					" https://github.com/vim-syntastic/syntastic                        syntax checking
Plug 'dense-analysis/ale'                       " https://github.com/dense-analysis/ale                         Linter and interface to lsp 
" Plug 'neoclide/coc.nvim', { 'branch': 'release' }		" https://github.com/neoclide/coc.nvim
