colorscheme space-vim-dark
hi Comment cterm=italic
let mapleader = "\<Space>"
"buffer and file 
"{
function! DeleteFileAndCloseBuffer()
call delete(expand('%')) | bdelete!
endfun
" noremap <silent> <leader>df :Delete<cr>
noremap <silent> <leader>df :call DeleteFileAndCloseBuffer()<cr>
noremap <silent> <leader>da ggdG
"}
"{change window quickly
nnoremap <localleader>ww <C-W>w
nnoremap <leader><Right> <C-w>l
nnoremap <leader><Left> <C-w>h
nnoremap <leader><Up> <C-w>k
nnoremap <leader><Down> <C-w>j
"}
"{quick indent visual with tab
vnoremap <tab> >gv
vnoremap <s-tab> <gv
"}
