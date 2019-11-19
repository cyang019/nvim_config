set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
" set smartindent
set showmatch		" Show matching brackets.
set backspace=indent,eol,start

" general config
set laststatus=2 " always show status line
set showtabline=2 " always show tabline


set number		" Show the line numbers on the left side.
set relativenumber
set ruler 		" Show the line and column numbers of the cursor.

set noerrorbells	" No beeps.
set modeline		" Enable modeline

set showcmd		" Show (partial) command in status line
set noshowmode " hide default mode text (e.g. INSERT) as airline already displays it

set wildmenu " visual auto complete for command menu
set guioptions-=r " remove right scrollbar
set guioptions-=L " remove left scrollbar
set titlestring=%{getcwd()} " set the window title to the PWD

" start scrolling three lines before the horizontal window border
if !&scrolloff
  set scrolloff=3
endif

set nostartofline	" Do not jump to first character with page commands.
