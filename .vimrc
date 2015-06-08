" 共通設定
set tabstop=4
set expandtab
set shiftwidth=4
syntax on
set hlsearch
set list
autocmd QuickFixCmdPost *grep* cwindow

filetype plugin on
filetype indent on

" netrwの設定
let g:netrw_liststyle = 3

" vim-indent-guidesの設定
colorscheme default
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   guibg=red    ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=green  ctermbg=233
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1

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
NeoBundle 'mattn/emmet-vim'
NeoBundle 'edsono/vim-matchit'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/jade.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
