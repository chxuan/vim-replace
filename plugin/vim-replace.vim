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
let g:reg_content = ""

nnoremap <expr> rr <sid>replace_text()
xnoremap <expr> rr <sid>replace_text()
command! -nargs=* ReplaceTo call replace#replace_all#replace_all(<f-args>)

" 替换文本
function! s:replace_text()
    let m = <sid>get_current_mode()

    if m == "n"
        return ":call ReplaceTextInNormal()\<cr>"
    elseif m == "V" || m == "v"
        return "d:call ReplaceTextInVisual()\<cr>"
    endif
endfunction

" 在正常模式下替换文本
function! ReplaceTextInNormal()
    call <sid>delete_current_word()
    call <sid>paste_text()
endfunction

" 在可视模式下替换文本
function! ReplaceTextInVisual()
    call <sid>paste_text()
endfunction

" 获取当前模式
function! s:get_current_mode()
    return mode()
endfunction

" 删除当前单词
function! s:delete_current_word()
    execute "normal diw"
endfunction

" 粘贴文本
function! s:paste_text()
    execute "normal \"0P"
endfunction

