" Pathogen Stuff
call pathogen#infect()

" General Info Settings
set relativenumber
set ruler

" Key Mappings
noremap ; :
noremap : ;
noremap <C-h> :help 
imap ii <ESC>
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
set hlsearch
set incsearch
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
