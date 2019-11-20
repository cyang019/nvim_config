" vim-plug package manager
" - For Neovim: ~/.local/share/nvim/plugged Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Appearance
Plug 'vim-airline/vim-airline'        " cool window decoration
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
"--------------------
" color schemes
Plug 'flazz/vim-colorschemes'   " Colors
Plug 'altercation/vim-colors-solarized'
Plug 'bluz71/vim-moonfly-colors'
Plug 'nanotech/jellybeans.vim'

" Functionality
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'       " git wrapper for vim
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'junegunn/vim-easy-align'

" Syntax 
Plug 'ycm-core/YouCompleteMe'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'hdima/python-syntax'      " better python syntax
Plug 'heavenshell/vim-pydocstring'
Plug 'leafgarland/typescript-vim' " typescript syntax highlight
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'

" Snippet engine
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine
Plug 'honza/vim-snippets'


" Initialize plugin system
call plug#end()
