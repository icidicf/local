set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set nu


set expandtab
set shiftwidth=4
set softtabstop=4

"set autoindent
"set smartindent


filetype on 
"syntax on 

"remember last cursor position
set viminfo='10,\"100,:20,%,n~/.viminfo

function! LoadCscope()
    let db = findfile("cscope.out", ".;")
if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
    endif
    endfunction
    au BufEnter /* call LoadCscope()



nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>    
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
map Y "+y

"taglist 
let Tlist_Use_Right_Window = 1

"color scheme
syntax enable
set background=dark
"colorscheme molokai
"colorscheme grb256 
"colorscheme last256 
"colorscheme luna
"colorscheme xterm16
"colorscheme solarized
"colorscheme desert
colorscheme jellybeans

"/*80 character limit*/
highlight ColorColumn ctermbg=blue guibg=Magenta      
set textwidth=80                                                                 
set colorcolumn=+1 


"/*you complete me*/
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_global_ycm_extra_conf = '~/local/configure/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/local/configure/*']
"let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1
let g:syntastic_enable_balloons = 1
let g:ycm_seed_identifiers_with_syntax = 1


