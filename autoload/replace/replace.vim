" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/vim-replace
" Create Date: 2018-06-05
" License: MIT
" ==============================================================

let g:reg_content = ""

" 替换文本
function! replace#replace#replace_text()
    let g:reg_content = @"
    call replace#util#delete_current_word()
    call replace#util#write_text_at_current_row(g:reg_content)
    let @" = g:reg_content
endfunction

