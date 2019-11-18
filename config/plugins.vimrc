filetype plugin indent on

let g:python3_host_prog = '/usr/local/bin/python3'

let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
let g:clang_cpp_options = '-std=c++17 -stdlib=libc++'
let g:clang_complete = 1
let g:clang_snippets = 1
let g:clang_close_preview = 1

"c++ syntax highlighting

" luochen1990/rainbow
let g:rainbow_active = 1

"Yggdroot/indentLine
let g:indentLine_char_list = ['|', '¦']


" NERDTree
" automatic open NERDTree when open directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" automatic close when no window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" }}}
" Colors {{{
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

" }}}
" vim-airline {{{

" }}}
" Automatic Fold
"
" augroup AutoSaveFolds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent loadview
" augroup END

" Snippets configurations
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"
