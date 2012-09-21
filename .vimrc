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
" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <right> <nop>
map <left> <nop>
imap <up> <nop>
imap <down> <nop>
imap <right> <nop>
imap <left> <nop>
" Disable mouse
set mouse=

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
colorscheme koehler

" Wrapping (not that kind...)
set wrap
set linebreak

" Autocompletion
filetype plugin on
set ofu=syntaxcomplete#Complete

" Splits
set splitright

" Auto Commands
au FocusLost * : wa

" Custom Leader Commands
let mapleader = ","
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>
