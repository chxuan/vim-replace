" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/vim-replace
" Create Date: 2018-06-11
" License: MIT
" ==============================================================

" 替换全部
function! replace#replace_all#replace_all(arg)
    let word = replace#util#get_current_cursor_word()
    call replace#util#replace_text_batch(word, a:arg)
endfunction

