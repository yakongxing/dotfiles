" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible
filetype off
syntax on
filetype plugin indent on
let mapleader = ","
set modelines=0
set number
set ruler
set visualbell
set encoding=utf-8
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

nnoremap j gj
nnoremap k gk

set hidden

set ttyfast
set laststatus=2
set showmode
set showcmd
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
inoremap <F1> <ESC>:set invfullscreen<CR>a
inoremap jk <ESC>
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>w :w<CR>
map <leader>q gqip
set listchars=tab:▸\ ,eol:¬
set list " To enable by default
" Or use your leader key + l to toggle on/off
" map <leader>l :set list!<CR> " Toggle tabs and EOL
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

call plug#begin('~/.vim/plugged')
Plug 'arzg/vim-colors-xcode'
call plug#end()

colorscheme xcodewwdc
