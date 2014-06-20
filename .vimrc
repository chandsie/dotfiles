" Pathogen Stuff
call pathogen#infect()

" General Settings
set nocompatible
set modelines=0
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set backspace=indent,eol,start
set undofile
set relativenumber
set ruler

" Key Mappings
noremap ; :
noremap <C-h> :help
imap jj <ESC>
noremap j gj
noremap k gk
" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <right> <nop>
map <left> <nop>
imap <up> <nop>
imap <down> <nop>
imap <right> <nop>
imap <left> <nop>
" Enable mouse support
set mouse=a
set ttymouse=xterm2

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
nnoremap <tab> %
vnoremap <tab> %
nnoremap <CR> :let @/ = ""<CR><CR>

" Tab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Color/Highlights
syntax on
filetype plugin indent on
set background=dark
if has('gui_running')
    let g:solarized_termcolors=256
    colorscheme solarized
else
    set background=dark
endif

" Wrapping (not that kind...)
set nowrap
set linebreak

" Autocompletion
filetype plugin on
set ofu=syntaxcomplete#Complete

" Auto Commands
:au FocusLost * silent! wa

" Custom Leader Commands
let mapleader = ","
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
nnoremap <leader>T :retab<cr>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>t :ConqueTerm bash<cr>
nnoremap <leader>d :NERDTree<cr>

" Splits
set splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Non-pathogen plugin installs
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Plugin List
"0. pathogen
"1. vim-numbertoggle
"2. nerdcommenter
"3. surround.vim
"4. MatchTag (non-pathogen)
"5. CtrlP
"6. ag.vim

