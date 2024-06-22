set mouse=a "mouse

set autoindent

set hlsearch " Enable search highlighting
set ignorecase " Ignore case when searching

set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=1 " The number of screen lines to keep above and below the cursor.
syntax enable " Enable syntax highlighting.
colorscheme evening
set wrap " Enable line wrapping

set ruler "cursor position
set title "show the windows title
set background=dark "dark background colors
set number "line nums

set history=1000 " Increase the undo limit

set expandtab " enter spaces when tab is pressed
set tabstop=4 " use 4 spaces to represent tab

"shift tabe shortcut
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
