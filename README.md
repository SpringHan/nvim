# My Neovim Configuration

This is my Neovim's Configuration files.

First,look an example:

![TheExample](./demo.png)

(I'm a colemak user.)

## Plugins

My Plugins Manager is **[vim-plug](https://github.com/junegunn/vim-plug)**,I really like this manager. (And it's master is also very good.)

#### My Plugins

- [vim-startify](https://github.com/mhinz/vim-startify) - A nice startify
- [LightLine](https://github.com/itchyny/lightline.vim) - A light and useful statusline in vim
- [Dracula](https://github.com/dracula/vim) - A really beautiful theme in vim(And I modified sonething,you can [Look here](https://github.com/SpringHan/dracula))
- [vim-gitbranch](https://github.com/itchyny/vim-gitbranch) - A simple git plugin which can show the branch name in vim
- [LightLine-buffer](https://github.com/taohexxx/lightline-buffer) - LightLine's buffer line.
- [GruvBox](https://github.com/morhetz/gruvbox) - A popular theme in vim
- [vim-javascript](https://github.com/pangloss/vim-javascript) - A vim plugin provides javascript syntax
- [Tagbar](https://github.com/majutsushi/tagbar) - A plug can show the functions in vim
- [Far](https://github.com/brooth/far.vim) - A great plug which can do a good job on finding in vim
- [Auto-Pairs](https://github.com/jiangmiao/auto-pairs) - A plug that can insert or delete brackets, parens, quotes in pair
- [vim-easy-align](https://github.com/junegunn/vim-easy-align) - A plug that can center code easily
- [vim-cursorline](https://github.com/itchyny/vim-cursorword) - A plug that can make words have underline
- [vim-peakaboo](https://github.com/junegunn/vim-peekaboo) - A plug which extension `@` and `"`
- [NERDTree](https://github.com/scrooloose/nerdtree) - A files tree in vim
- [coc.vim](https://github.com/neoclide/coc.vim) - A completor in vim
- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) - A Plugin which can help you format the tables.
- [Ultisnips](https://github.com/SirVer/ultisnips) - A Plugin which can provide code snippets in vim
- [vim-space-theme](https://github.com/liuchengxu/space-vim-theme) - A pretty nice vim theme
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) - A markdown previewer
- [Undotree](https://github.com/mbbill/undotree) - A plugin which can save the editing histroy
- [fzf](https://github.com/junegunn/fzf) - A fuzzy finder in vim


## Plugins provider

#### The most important step

- You can input `:checkhealth` in vim to check if your neovim work well.

#### Set your Python3 path

You can find __Line 33__ and __Line 35__ in the `init.vim`,and then input your Python3 path.

Like this:
```vim
let g:python_host_prog = '/bin/python'
let g:python3_host_prog = '/bin/python3'
```

#### Some other custom settings

You can find __Line 87__ in the `init.vim` to set your own `leader`.


## Key Mappings

These are my Key Mappings,of course you can change them.

| Insert Key | origin Key |
|------------|------------|
| ;;         | ESC A ;    |
| .,         | ESC A      |
| .fl        | {{{        |
| .fn        | }}}        |
| ?a         | ESC la     |
| ?O         | ESC O      |
| ?o         | ESC o      |
| ?I         | ESC I      |
| ?h         | ESC i      |
| ,x         | ESC xa     |
| .x         | ESC lxa    |
| ,X         | ESC xi     |
| .X         | ESC lxi    |

| Normal Key | origin Key       |
|------------|------------------|
| n          | h                |
| i          | l                |
| u          | k                |
| e          | j                |
| h          | i                |
| U          | 5k               |
| E          | 5j               |
| N          | 5h               |
| I          | 5l               |
| l          | u                |
| k          | n                |
| K          | N                |
| H          | I                |
| ci         | ci               |
| cI         | cl               |
| C          | C                |
| cl         | :bp CR           |
| cn         | :bn CR           |
| cw         | :w CR            |
| cq         | :q CR            |
| wq         | :wq CR           |
| wa         | :qa CR           |
| eq         | :q! CR           |
| bf         | :buffers CR      |
| et         | :edit            |
| sp         | :split           |
| vs         | :vsplit          |
| va         | C-w +            |
| vr         | C-w -            |
| ve         | C-w =            |
| vj         | C-w j            |
| vk         | C-w k            |
| vh         | C-w h            |
| vl         | C-w l            |
| tm         | :terminal CR     |
| bd         | :bd CR           |
| cd         | :noh CR          |
| leader-r   | RunCodes         |
| leader-tm  | :TableModeToggle |


## The End

Hope you can use these well.

```vim
 _   _                 _           
| \ | | ___  _____   _(_)_ __ ___  
|  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
| |\  |  __/ (_) \ V /| | | | | | |
|_| \_|\___|\___/ \_/ |_|_| |_| |_|
```
