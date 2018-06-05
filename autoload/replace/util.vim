" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/vim-replace
" Create Date: 2018-06-05
" License: MIT
" ==============================================================

" 删除当前单词
function! replace#util#delete_current_word()
    execute "normal diw"
endfunction

" 在当前行写入文本
function! replace#util#write_text_at_current_row(text)
    execute "normal i" . a:text
endfunction
