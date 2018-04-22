let g:undotree_SplitWidth=40
let g:undotree_SetFocusWhenToggle=1
noremap <F2> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
