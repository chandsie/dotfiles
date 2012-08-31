" General Info Settings
set number
set ruler

" Key Mappings
nnoremap ; :
nnoremap : ;
nnoremap <C-h> :help 
imap ii <ESC>

" Searching
set hlsearch
set incsearch

" Tab
set autoindent
set smartindent

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
:set splitright

" Syntax checking entire file
" Usage: :make (check file)
" :clist (view list of errors)
" :cn, :cp (move around list of errors)
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
