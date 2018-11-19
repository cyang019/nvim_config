filetype plugin indent on

let g:python3_host_prog = '/usr/local/bin/python3'

" deoplete enable at startup
" if has('nvim')
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" NERDTree
" automatic open NERDTree when open directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" automatic close when no window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <leader>n :NERDTreeToggle<CR>

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
" FastFold {{{
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
" }}}

" }}}
" YouCompleteMe settings {{{
"    let g:ycm_server_python_interpreter = 'usr/bin/python3'
"	let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"	let g:ycm_show_diagnostics_ui = 0
"	let g:ycm_register_as_syntastic_checker = 1
"    let g:ycm_disable_for_files_larger_than_kb = 180
" }}}

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
