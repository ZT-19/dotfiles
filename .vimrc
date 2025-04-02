set mouse=a "mouse

" Cursor display"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set autoindent

set hlsearch " Enable search highlighting
set ignorecase " Ignore case when searching

set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=1 " The number of screen lines to keep above and below the cursor.
syntax enable " Enable syntax highlighting.
colorscheme evening
set wrap " Enable line wrapping


" display indicators
set showmatch       " show matching brackets
set cursorline      " highlight current line
set colorcolumn=80  " show column guide at 80 characters
set ruler           "cursor position
set title           "show the windows title
set background=dark "dark background colors
set number          "line nums

set history=1000 " Increase the undo limit

set expandtab " enter spaces when tab is pressed
set tabstop=4 " use 4 spaces to represent tab

" quick pairs (auto complete pairs)

inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>

" quick pairs uncomment for (double input to auto complete)
"inoremap {{ {}<left>
"inoremap (( ()<left>
"inoremap [[ []<left>
"inoremap '' ''<left>
"inoremap "" ""<left>

"shift tab shortcut
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
