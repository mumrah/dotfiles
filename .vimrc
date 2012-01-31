set t_Co=256

colorscheme ir_black
set nocompatible
set history=100		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showmode		" display the current mode
set showcmd		" display incomplete commands
set sw=4
set tw=79
set smarttab
filetype plugin indent on
set autoindent		" always set autoindenting on
syntax on
set ignorecase
set smartcase

au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.c,*.h,*.cpp,*.hpp set shiftwidth=4
au BufRead,BufNewFile *.xml set shiftwidth=4

au BufRead,BufNewFile *py,*pyw set tabstop=4
au BufRead,BufNewFile *.c,*.h,*.cpp,*.hpp set tabstop=4
au BufRead,BufNewFile *.xml set tabstop=4

au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.c,*.h,*.cpp,*.hpp set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab
au BufRead,BufNewFile *.xml set expandtab 

" Use the below highlight group when displaying bad whitespace is desired
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" Wrap text after a certain number of characters
" Python: 79 
" C: 79
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp,*.hpp set textwidth=79

" Turn off settings in 'formatoptions' relating to comment formatting.
" - c : do not automatically insert the comment leader when wrapping based on
"    'textwidth'
" - o : do not insert the comment leader when using 'o' or 'O' from command mode
" - r : do not insert the comment leader when hitting <Enter> in insert mode
" Python: not needed
" C: prevents insertion of '*' at the beginning of every line in a comment
au BufRead,BufNewFile *.c,*.h,*.cpp,*.hpp set formatoptions-=c formatoptions-=o formatoptions-=r

" Use UNIX (\n) line endings.
" Only used for new files so as to not force existing files to change their
" line endings.
" Python: yes
" C: yes
au BufNewFile *.py,*.pyw,*.c,*.h,*.cpp,*.hpp set fileformat=unix

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1


au FileType python source ~/.vim/ftplugin/python/python.vim

nnoremap <F8> :setl noai nocin nosi inde=<CR>
nnoremap <F9> :setl ai cin si inde=<CR>
