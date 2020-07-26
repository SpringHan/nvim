# 我的 NeoVim 配置文件

[**English version**](README.md)

此仓库存放了我的 NeoVim 配置文件 (我是一个 Colemak 用户)

如果你想使用我的配置文件, 请确保你能读懂它, 否则你很有可能会遇到问题

![Example](./demo.png)

## 攻略

- [插件](#插件)
- [使用之前](#使用之前)
- [快捷键](#快捷键)
- [自定义函数](#自定义函数)

## 插件

我的插件管理器是 **[vim-plug](https://github.com/junegunn/vim-plug)** .

#### 我的插件

- [vim-startify](https://github.com/mhinz/vim-startify) - 一个不错的启动页面
- [HicusLine](https://github.com/Styadev/HicusLine) - (Neo)Vim下的高度自定义状态栏
- [Terslation.vim](https://github.com/SpringHan/Terslation.vim) - 终端翻译器的Vim界面
- [Deus](https://github.com/ajmwagar/vim-deus) - 一个代码编辑器的更好的深色配色(我对源项目进行了些修改,你可以[看这里](https://github.com/SpringHan/vim-deus))
- [vim-javascript](https://github.com/pangloss/vim-javascript) - 提供JavaScript高亮
- [Tagbar](https://github.com/majutsushi/tagbar) - 显示函数和变量的插件
- [Far](https://github.com/brooth/far.vim) - 一个很棒的插件，可以很好地在Vim中查找
- [Auto-Pairs](https://github.com/jiangmiao/auto-pairs) - 可以成对插入或删除方括号，括号，引号的插头
- [vim-easy-align](https://github.com/junegunn/vim-easy-align) - 让对齐变得更简单
- [coc.vim](https://github.com/neoclide/coc.vim) - 补全框架
- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) - 一个可以帮助您格式化表格的插件
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) - markdown预览器
- [Undotree](https://github.com/mbbill/undotree) - 显示更改历史
- [emmet-vim](https://github.com/mattn/emmet-vim) - Vim的Emmet
- [fzf](https://github.com/junegunn/fzf) - 模糊文件查找器
- [vim-illuminate](https://github.com/RRethy/vim-illuminate) - 一种用于阐明光标下当前单词的其他用途的工具
- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) - 多重选择Sublime Text
- [vim-surround](https://github.com/tpope/vim-surround) - 简单更改符号
- [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks) - 一个使用基于行的书签的Vim插件
- [suda.vim](https://github.com/lambdalisue/suda.vim) - 插件可以使您在Neovim中使用sudo
- [vim-capslock](https://github.com/SpringHan/vim-capslock) - 改变你的大小写
- [goyo.vim](https://github.com/junegunn/goyo.vim) - 插件使您在Vim中写得轻松无忧
- [NoToC.vim](https://github.com/SpringHan/NoToC.vim) - 插件可以控制(Neo)Vim中的注释和待办事项
- [NerdCommenter](https://github.com/preservim/nerdcommenter) - 注释反注释插件
- [vim-pdf](https://github.com/makerj/vim-pdf) - 预览pdf文件
- [vim-hexokinase](https://github.com/RRethy/vim-hexokinase) - 最快的(Neo)Vim插件，用于异步显示文件中的颜色
- [vim-calendar](hhtps://github.com/itchyny/calendar.vim) - Vim的日历应用程序
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter) - 一个Vim插件，在标记列中显示git diff标记，并分阶段/预览/撤消块和部分块

## 使用之前

#### 检查环境

1. [ ] Python 和 Python3 已经安装
2. [ ] pynvim 已经安装

#### 检查"健康"

你可以在 vim 里运行 ":checkhealth" 以检查你的 NeoVim 工作是否正常

#### 设置 Python 路径

你可以找到 python 或 python3 的路径, 然后将它们输入到 `init.vim` 中

像这样:
```vim
let g:python_host_prog = '/bin/python'
let g:python3_host_prog = '/bin/python3'
```

## 快捷键

你可以在我的 NeoVim 中运行 ":map" 以获得我的所有键位

## 自定义函数

### 透明背景

你可以用 `<leader>la` 来将背景透明化或不透明化

![Example](./demo2.png)

### 悬浮终端

你可以用 `<leader>Ft` 来打开悬浮终端

![Example](./demo3.png)

你还可以用 `<leader>Fs` 来在右上角展示悬浮终端

像这样:

![Example](./demo4.png)

你可以用 `<M-a>` 在浮动终端和右上角小终端进行变化

### 悬浮Ranger

悬浮Ranger基于我所编写的`悬浮终端`。  
你可以使用 `<leader>Rt` 来打开它。当然，你也可以像使用 `悬浮终端` 一样通过 `<M-a>` 来改变它的位置和大小。

### 运行代码

你可以使用 `<leader>r` 来编译并运行不同的编程程序

```vim
 _   _                 _           
| \ | | ___  _____   _(_)_ __ ___  
|  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
| |\  |  __/ (_) \ V /| | | | | | |
|_| \_|\___|\___/ \_/ |_|_| |_| |_|
```
