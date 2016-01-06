"syntax on
"filetype plugin indent on

"set foldmethod=indent
"set foldlevel=99

let mapleader="-"
let localmapleader=","

"global mode
map <Leader>d   dd
map <Leader>w   diw


"normal mode
:nnoremap <leader>ev :split $MYVIMRC<cr>
:nnoremap <leader>eb :split /home/lyp/.bashrc<cr>
:nnoremap <leader>sc :source $MYVIMRC<cr>


"visual mode
"annotate the selected under visual mode
"":vmap <c-a> :execute "normal! \<esc>`<ippp\<esc>`>appp\<cr>\<esc>"<cr>
:vnoremap <c-a> :<esc>'<i'''  <esc>`>a  '''<esc><cr>


:onoremap d( :<c-u>normal! f(vi(<cr>
:onoremap d" :<c-u>normal! f"vi"<cr>


" vim script auto command settings ---- {{{
:augroup lypgroup
:autocmd!
:autocmd BufNewFile *.txt :write
:autocmd BufWritePre *.html :normal gg=G
:autocmd FileType python nnoremap <buffer>
<localleader>h :read "#!" + !which
python<esc>
:autocmd FileType python nnoremap
<buffer> <localleader>c I#<esc>
:autocmd FileType vim
setlocal foldmethod=marker

:augroup END

" }}}

:set laststatus=2
:set statusline=%F

function! Lyp()
    echo "you are lyp"
endfunction
