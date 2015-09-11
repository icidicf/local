set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set nu


set expandtab
set shiftwidth=4
set softtabstop=4

set autoindent
set smartindent


filetype on 
syntax on 

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

