vim-replace: A text replace plugin for vim
===============================================

## 安装
    
- `vim-plug`

    Plug 'chxuan/vim-replace'

- `Vundle`

    Plugin 'chxuan/vim-replace'

## 使用

- `rr`

    当执行`yiw`、`diw`等命令操作文本后，在`normal`模式下执行`rr`命令，则会替换掉当前光标所在单词，在`visual`模式下执行`rr`命令，则会替换掉选中的文本。

- `:ReplaceTo`

    执行全局替换，目前只支持单个文件

## 参考配置

请将以下配置加到 `~/.vimrc`，如果不喜欢以下映射，可根据个人喜好更改。

    nnoremap <leader>r :ReplaceTo<space>


## License

This software is licensed under the [MIT license][1]. © 2018 chxuan


  [1]: https://github.com/chxuan/vim-replace/blob/master/LICENSE
