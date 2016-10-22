set shell=sh
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'

" Start NERDTree on Vim start and focus on edit pane
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable powerline in Vim and set theme to solarized
syntax enable
set background=dark
colorscheme solarized

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colors
set t_Co=256

" Vim prefs
set rnu
set ruler
set tabstop=2
set number
set colorcolumn=80

" Mappings
map ; :
map j gj
map k gk

" NERDTree prefs
let NERDTreeShowHidden=1

" GitGutter prefs
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~' 
let g:gitgutter_sign_removed = '--' 
let g:gitgutter_sign_removed_first_line = '^^' 
let g:gitgutter_sign_modified_removed = 'ww' 
