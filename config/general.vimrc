set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
" set smartindent
set showmatch		" Show matching brackets.
set backspace=indent,eol,start



set number		" Show the line numbers on the left side.
set relativenumber
set ruler 		" Show the line and column numbers of the cursor.

set noerrorbells	" No beeps.
set modeline		" Enable modeline

set showcmd		" Show (partial) command in status line
set showmode		" Show current mode

set wildmenu " visual auto complete for command menu
set guioptions-=r " remove right scrollbar
set guioptions-=L " remove left scrollbar
set titlestring=%{getcwd()} " set the window title to the PWD

" Enable folding
set foldmethod=indent
set foldlevel=10


" start scrolling three lines before the horizontal window border
if !&scrolloff
  set scrolloff=3
endif

set nostartofline	" Do not jump to first character with page commands.
