"Allows for pathogen to auto-install any file in the bundle directory
"requires cloning pathogen
execute pathogen#infect()
"Turns on syntax coloration
syntax on
"Turn off funky auto-indenting
set paste
"Set tabs up.
set expandtab
set shiftwidth=4
set softtabstop=4
"sets up auto indenting based on filetype plugin.
filetype plugin indent on
"turn on status in vim
set laststatus=2

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

