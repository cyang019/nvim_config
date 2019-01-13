" vim-plug package manager
" - For Neovim: ~/.local/share/nvim/plugged Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

Plug 'Valloric/YouCompleteMe'   " better tab completion
Plug 'vim-airline/vim-airline'        " cool window decoration
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace'
Plug 'nsf/gocode'
Plug 'flazz/vim-colorschemes'   " Colors
Plug 'tpope/vim-fugitive'       " git wrapper for vim
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Konfekt/FastFold'
Plug 'hdima/python-syntax'      " better python syntax
Plug 'leafgarland/typescript-vim' " typescript syntax highlight
" post install (yarn install | npm install) then load plugin only for editing supported files
"
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Javascript auto completion
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" Snippet engine
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine
Plug 'honza/vim-snippets'



"--------------------
" color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'bluz71/vim-moonfly-colors'
Plug 'nanotech/jellybeans.vim'

" Initialize plugin system
call plug#end()
