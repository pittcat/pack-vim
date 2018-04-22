let $LANG = 'en_US'
" Customize fzf colors to match your color scheme
nmap <Leader>? <plug>(fzf-maps-n)
xmap <Leader>? <plug>(fzf-maps-x)
omap <Leader>? <plug>(fzf-maps-o)

nnoremap <Leader>ag :Ag!<CR>
nnoremap <Leader>bb :Buffers<CR>

nnoremap <Leader>b? :Buffers<CR>
nnoremap <Leader>w? :Windows<CR>
nnoremap <Leader>f? :Files<CR>

nnoremap <Leader>ff :Files ~<CR>
nnoremap <leader>rg :Rg!<cr>
nnoremap <silent> <leader>ct :Tags<cr>
nnoremap <silent> <leader>fb :BTags<cr>
nnoremap <silent> <leader>ls :Lines<cr>
nnoremap <silent> <leader>fl :BLines<cr>
command! -bang -nargs=* Ag
            \ call fzf#vim#ag(<q-args>,
            \                 <bang>0 ? fzf#vim#with_preview('up:80%')
            \                         : fzf#vim#with_preview('right:80%:hidden', '?'),
            \                 <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:70%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
" }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
\ 'bg':      ['bg', 'Normal'],
\ 'hl':      ['fg', 'Comment'],
\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
\ 'hl+':     ['fg', 'Statement'],
\ 'info':    ['fg', 'PreProc'],
\ 'border':  ['fg', 'Ignore'],
\ 'prompt':  ['fg', 'Conditional'],
\ 'pointer': ['fg', 'Exception'],
\ 'marker':  ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header':  ['fg', 'Comment'] }
