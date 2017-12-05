set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"comment plugins
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'

"Syntax plugins
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'

"color/aestetics plugins
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-bufferline'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'yuttie/comfortable-motion.vim'
Plugin 'tpope/vim-fugitive'

"Window plugins
Plugin 'wesq3/vim-windowswap'
Plugin 'jimsei/winresizer'
Plugin 'mbbill/undotree'
Plugin 'scrooloose/nerdtree'


" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 
syntax enable
set background=dark
colorscheme solarized


" air-line
let g:airline_theme='badwolf'
set guifont="Arimo Powerline"
"set guifont=Anonymice\ Powerline
"set guifont="DejaVu Sans Mono Oblique for Powerline":s12
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''



inoremap jk <Esc>
inoremap JK <Esc>
inoremap jK <Esc>
inoremap Jk <Esc>



set tabstop=4
set softtabstop=0 
set expandtab 
set shiftwidth=2
set smarttab
set number

noremap H ^
noremap L $
noremap J 10j
noremap K 10k

"filetype off
"filetype plugin indent on

"needed?
"syntax on

"Setting leaders

let mapleader = " "
let maplocalleader = ","


iabbrev ccopy Copyright 2017 Ethan Lambert, all rights reserved

autocmd BufWritePre,BufRead *.html :normal gg=G


"file comments

autocmd FileType javascript nnoremap <buffer> <localleader>c i//<esc>
autocmd FileType python nnoremap <buffer> <localleader>c i#<esc>



onoremap <localleader>p i(
onoremap <localleader>b i[ 
onoremap <localleader>m i{
