" File: ~/.vimrc
" Info: Vim startup settings. (Use this for root.  If you have SPF13 or Janus installed, don't use this
"       use ~/.vimrc.local instead otherwise, you can use this file.
set nocp                    " Use Vim defaults
set shell=/bin/bash         " Set the shell to Bash
set bg=dark                 " set background to dark
filetype plugin indent on   " Automatically detect file types
syntax on                   " Use code syntax
set showmode                " Show the current mode in the status line
set nu                      " Enable line numbers
set ai                      " Enable auto-indent
set sc                      " Show partial commands
set noincsearch             " Do not search as you time. (Learn RegEx, it is better.)
set noexpandtab             " Do not expand tabs into spaces
set backspace=indent,eol,start	" Have backspace work like in most other applications
