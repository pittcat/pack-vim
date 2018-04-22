let g:NERDTreeShowHidden=0
let g:NERDTreeAutoDeleteBuffer=1
" ❯
let g:NERDTreeDirArrowExpandable = "\u276f"
let g:NERDTreeDirArrowCollapsible = "~"
let g:NERDTreeIgnore = [
              \ '\.py[cd]$', '\~$', '\.swo$', '\.swp$', '\.DS_Store$',
              \ '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$',
              \ ]

nnoremap <F4> :NERDTreeToggle<CR>
inoremap <F4> <ESC>:NERDTreeToggle<CR>
nnoremap <Leader>ft :NERDTreeToggle<CR>
nnoremap <Leader>fd :NERDTreeFind<CR>
