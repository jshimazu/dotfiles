set tabstop=4
set expandtab
set shiftwidth=4
syntax on
set hlsearch
set list
autocmd QuickFixCmdPost *grep* cwindow

filetype plugin on
filetype indent on

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.

NeoBundle 'Shougo/unite.vim'           " filer
NeoBundle 'mattn/emmet-vim'            " assist coding HTML
NeoBundle 'edsono/vim-matchit'         " jump HTML tag
NeoBundle 'scrooloose/syntastic'       " syntax checker


NeoBundleCheck

