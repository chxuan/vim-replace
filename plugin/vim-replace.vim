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

command! -nargs=0 ReplaceText :call <sid>replace_text()

" 替换文本
function! s:replace_text()
    let buffer = @
    execute "normal diw"
    execute "normal i" . buffer
endfunction

