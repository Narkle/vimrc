function! PackInit() abort
  set packpath^=~/.vim_runtime
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  "call minpac#add('vim-jp/syntax-vim-ex')
  call minpac#add('junegunn/fzf', { 'do': { -> fzf#install() } })
  call minpac#add('junegunn/fzf.vim')



endfunction

" Plugin settings here.

" Define user commands for updating/cleaning the plugins.
" Each of them calls PackInit() to load minpac and register
" the information of plugins, then performs the task.
"
command! PackUpdate source $MYVIMRC | call PackInit() | call minpac#update()
command! PackClean  source $MYVIMRC | call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
