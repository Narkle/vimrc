function! PackInit() abort
  set packpath^=~/.vim_runtime
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  "call minpac#add('vim-jp/syntax-vim-ex')
  call minpac#add('junegunn/fzf', { 'do': { -> fzf#install() } })
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('jlanzarotta/bufexplorer')
  call minpac#add('akinsho/bufferline.nvim')

  "colorscheme
  call minpac#add( 'marko-cerovac/material.nvim')

  "highlighting"
  call minpac#add('sheerun/vim-polyglot')
  call minpac#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})


  call minpac#add('w0rp/ale')

  "plugin for latex
  call minpac#add('lervag/vimtex')

  "comment commands(gcc..)
  call minpac#add('tpope/vim-commentary')


  "=============== texobj ===============
  call minpac#add('kana/vim-textobj-user')
  call minpac#add('bps/vim-textobj-python')
  call minpac#add('michaeljsmith/vim-indent-object')
  call minpac#add('kana/vim-textobj-function')
  call minpac#add('junegunn/vim-easy-align')
  call minpac#add('whatyouhide/vim-textobj-xmlattr')
  call minpac#add('sgur/vim-textobj-parameter')


  "=== snipper ===="
  call minpac#add("L3MON4D3/LuaSnip")
  call minpac#add('rafamadriz/friendly-snippets')

  " call minpac#add('SirVer/ultisnips')
  " call minpac#add('quangnguyen30192/cmp-nvim-ultisnips')
  " Snippets are separated from the engine. Add this if you want them:
  " call minpac#add('honza/vim-snippets')



endfunction

" Plugin settings here.

" Define user commands for updating/cleaning the plugins.
" Each of them calls PackInit() to load minpac and register
" the information of plugins, then performs the task.
"
command! PackUpdate source $MYVIMRC | call PackInit() | call minpac#update()
command! PackClean  source $MYVIMRC | call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
