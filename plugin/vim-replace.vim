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

" 替换文本
function! s:replace_text()
    let m = <sid>get_current_mode()

    if m == "n"
        return ":call ReplaceTextInNormal()\<cr>"
    elseif m == "V" || m == 'v'
        let g:reg_content = @"
        return "d:call ReplaceTextInVirtual()\<cr>"
    endif
endfunction

" 在正常模式下替换文本
function! ReplaceTextInNormal()
    let g:reg_content = @"
    call <sid>delete_current_word()
    call <sid>write_text_at_current_row(g:reg_content)
    let @" = g:reg_content
endfunction

" 在可视模式下替换文本
function! ReplaceTextInVirtual()
    call <sid>write_text_at_current_row(g:reg_content)
    let @" = g:reg_content
endfunction

" 获取当前模式
function! s:get_current_mode()
    return mode()
endfunction

" 删除当前单词
function! s:delete_current_word()
    execute "normal diw"
endfunction

" 在当前行写入文本
function! s:write_text_at_current_row(text)
    execute "normal i" . a:text
endfunction
