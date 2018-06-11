vim-replace: A text replace plugin for vim
===============================================

安装
------------
    
如果你使用[Vundle][1]插件管理器, 将 `Plugin 'chxuan/vim-replace'` 加到 `~/.vimrc` 然后执行 `:PluginInstall`.

使用
------------

当执行`yiw`、`diw`等命令操作文本后，在`normal`模式下执行`rr`命令，则会替换掉当前光标所在单词，在`visual`模式下执行`rr`命令，则会替换掉选中的文本。

License
------------

This software is licensed under the [MIT license][2]. © 2018 chxuan


  [1]: https://github.com/VundleVim/Vundle.vim
  [2]: https://github.com/chxuan/vim-replace/blob/master/LICENSE
