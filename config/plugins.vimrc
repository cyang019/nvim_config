filetype plugin indent on

let g:python3_host_prog = '/usr/local/bin/python3'
 
" YouCompleteMe
" let g:ycm_show_diagnostics_ui = 0

" luochen1990/rainbow
let g:rainbow_active = 1

"Yggdroot/indentLine
let g:indentLine_char_list = ['|', '¦']


" NERDTree
" Map the leader key to SPACE
let mapleader="\<SPACE>"
map <leader>n :NERDTreeToggle<CR>

" automatic open NERDTree when open directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" automatic close when no window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Colors
syntax enable
" let g:solarized_termcolors=256
if has('gui_running')
    set background=dark
else
    set background=light
endif
" colorscheme solarized
" colorscheme desert
" colorscheme moonfly
colorscheme jellybeans

"ctrlp + ctags
nnoremap <leader>. :CtrlPTag<cr>

" Snippets configurations
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"
