" Pathogen Stuff
runtime bundle/vim-pathogen/autoload/pathogen.vim
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
set cursorline

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
syntax enable
filetype plugin indent on
set background=dark
colorscheme solarized

" Wrapping (not that kind...)
set nowrap
set linebreak

" Autocompletion
filetype plugin on
set ofu=syntaxcomplete#Complete

" Auto Commands
:au FocusLost * silent! wa

" Leader Commands
let mapleader = ","
    " Trim trailing whitespace
    nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
    " Retab all the things
    nnoremap <leader>T :retab<cr>
    " Open a vertical split
    nnoremap <leader>v <C-w>v
    " Open a horizontal split
    nnoremap <leader>s <C-w>s
    " Open plugins
    nnoremap <leader>d :NERDTree<cr>
    nnoremap <leader>f :CommandT<cr>
    nnoremap <leader>t <Plug>TaskList

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Syntastic Configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" Plugin List
"0. pathogen
"1. vim-numbertoggle
"2. nerdcommenter
"3. surround.vim
"6. ag.vim
"7. Command-T
"8. Syntastic
"9. YouCompleteMe
