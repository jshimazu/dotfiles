set tabstop=4
set expandtab
set shiftwidth=4
syntax on
set hlsearch
set list
autocmd QuickFixCmdPost *grep* cwindow

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle'))
endif

" ここにインストールしたいプラグインのリストを書く
NeoBundle 'toyamarinyon/vim-swift'
NeoBundle 'h1mesuke/unite-outline'
:

filetype plugin on
filetype indent on
