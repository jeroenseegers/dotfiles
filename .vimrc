" Load Pathogen (https://github.com/tpope/vim-pathogen)
call pathogen#infect()
call pathogen#helptags()

set nocompatible                " Kill VI compatibility

set number                      " Show line numbers
set numberwidth=5               " Number of columns to use for the line number

syntax on                       " Enable syntax highlighting
set background=dark             " Enable dark background
colorscheme solarized           " Enable the Solarized colorscheme
set cursorline                  " Highlight the screen line of the cursor

filetype on                     " Trigger the FileType autocommands
filetype plugin on
filetype indent on

set laststatus=2                " When the last window will use a status line (0: never, 1: at least two windows, 2: always)

set ttyfast                     " Indicate a fast terminal connection

set backspace=indent,eol,start  " Set proper use of <BS> (http://vimdoc.sourceforge.net/htmldoc/options.html#'backspace')

set expandtab                   " Convert tabs to spaces
set tabstop=4                   " Number of spaces a <Tab> counts for
set softtabstop=4               " Number of spaces a <Tab> counts for when editing
set shiftwidth=4                " Number of spaces to use for (auto)indentation

command SW w !sudo tee % > /dev/null

" Load external settings
source ~/.vim/config/statusline.vim

" Allow overriding any of these settings
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
