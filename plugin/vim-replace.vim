" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/vim-replace
" Create Date: 2018-06-05
" License: MIT
" ==============================================================

if exists("g:vim_replace_loaded")
    finish
endif

let g:vim_buffer_loaded = 1

command! -nargs=0 ReplaceText :call replace#replace#replace_text()
