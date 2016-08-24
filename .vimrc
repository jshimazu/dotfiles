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

" NERDTreeキーマップ
nnoremap <silent><C-e> :NERDTreeToggle<CR> 

" netrwの設定
let g:netrw_liststyle = 3

" vim-indent-guidesの設定
colorscheme default
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   guibg=red    ctermbg=239
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=green  ctermbg=235
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
NeoBundle 'digitaltoad/vim-pug'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'kakkyz81/evervim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'nikvdp/ejs-syntax'
NeoBundle 'elzr/vim-json'
NeoBundle 'fatih/vim-go'
NeoBundle 'mxw/vim-jsx'

" jade > pug
au BufRead,BufNewFile,BufReadPre *.jade set filetype=pug 

" ejs
function! s:DetectEjs()
    if getline(1) =~ '^#!.*\<ejs\>'
        set filetype=ejs
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectEjs()


"改行文字とタブ文字を表示
set list
set listchars=tab:>-,eol:$
"改行文字とタブ文字の色設定（NonTextが改行、SpecialKeyがタブ）
hi NonText guibg=NONE guifg=DarkGreen
hi SpecialKey guibg=NONE guifg=Gray40

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
