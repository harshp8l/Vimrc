" author- Harsh Patel "

" in most settings below, a prefix of "no" turns off option

" Remove strict vi compatibility
set nocompatible  " not inheriting system wide vim settings

" Show line numbers or not
set nu          " displays line numbers to the left uselessly taking up space

" Proper indentation
set autoindent    " useful when writing code to maintain indenting
                  "  goes back one indent while still in insert mode

set smartindent   " starts indenting based on language of code 

" Text on a line
set nowrap        " lines past terminal screen width stay on the same line
set wrapmargin=2  " newline inserted 4 characters before screen width

" Search works properly, case-insensitive unless specified
set ignorecase    " causes searches to be case insensitive
set smartcase     " case sensitive search when item has an upper case letter
set incsearch     " starts search as you type the search pattern
set nohlsearch    " future matches aren't highlighted

" Backspace movement
set backspace=indent,eol,start  " backspace key acts like standard text editor 

" Highlight matching braces, brackets and parenthesis
set showmatch     " matches { [ and ( as your type

" Use spaces instead of tab and lazy backspacing for indentation
set softtabstop=2 " 8 is the default spacing for tabs
set tabstop=2     " 8 is the default spacing for tabs
set shiftwidth=2  " 8 is the default spacing for tabs
set expandtab     " option to expand tab to spaces if desired
set shiftround    " maintains indent when tabs and spaces are mixed
            
" Error sounds and visuals
set noerrorbells  " errors won't make noise
set visualbell    " screen flashes moving beyond begin/end and unmatched close
                            
" Show the mode
set showmode      " reports when inserting, otherwise, you are in command mode
set report=0      " reports changes involving more than 0 lines
set ruler	  " reports line and column number
set showcmd "shows command in bottom bar"

" Show syntax
syntax on         " colors keywords in language

" Favorite colorscheme (:color <space> <tab> shows possible colors)
:colors distinguished

" Text over 80 characters per line turns red
match Error /\%81v.\+/

" Tab completion works properly (UNIX Style) and shows menu of possible options.
set wildmenu
set wildmode=longest:full
set wildignore=*.o,*.bak,*.data,*.class

" Scrolling control
set scrolloff=2   " causes text to scroll 2 characters before file begin or end

" Backups.
set backup        " prior version of the file is saved prefixed with ~

" cs 30 stuff
set fileformats=unix,dos,mac	" open files from mac/dos
set exrc
set nojoinspaces
set bs=2			" fix backspacing in insert mode

" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,h,java} set expandtab
au BufRead,BufNewFile *.{c,h,java} set shiftwidth=2
au BufRead,BufNewFile *.{c,h,java} set tabstop=2


" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8
au BufRead,BufNewFile *.s set softtabstop=8


" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :prev <CR>

" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>

" setlocal textwidth=80		" used for text wrapping

" to get the stars for C /* formatting "
set formatoptions+=r
