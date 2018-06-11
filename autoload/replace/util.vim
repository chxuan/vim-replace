" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/vim-replace
" Create Date: 2018-06-11
" License: MIT
" ==============================================================

" 获取光标下的单词
function! replace#util#get_current_cursor_word()
    return expand("<cword>")
endfunction

" 批量替换文本
function! replace#util#replace_text_batch(src, target)
    execute ":%s/" . a:src . "/" . a:target . "/g"
endfunction
