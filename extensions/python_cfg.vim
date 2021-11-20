" This configuration must be used when working with virtual envs
" https://github.com/deoplete-plugins/deoplete-jedi#virtual-environments
" let g:python_host_prog = '~/.virtualenvs/neovim/py2/bin/python2'
let g:python3_host_prog = '~/.virtualenvs/neovim/py3/bin/python'

" disable autocompletion, cause we use deoplete for completion
" let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
" let g:neomake_python_enabled_makers = ['pylint']

" let g:vimspector_install_gadgets += [ 'debugpy' ]
