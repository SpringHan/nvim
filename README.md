# My Neovim Configuration

This is my Neovim's Configuration files.

First,look an example:

![TheExample](./demo.png)

(I'm not very good at this.Now,I am only a novice.)

## Plugins

My Plugins Manager is **[vim-plug](https://github.com/junegunn/vim-plug)**,I really like this manager. (And it's master is also very good.)

#### My Plugins

- [vim-startify](https://github.com/mhinz/vim-startify) - A nice startify
- [vim-airline](https://github.com/vim-airline/vim-airline) - A status-line which is light like air
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) - vim-airline official themes
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

You can find __Line 34__ in the `init.vim`,and then input your Python3 path.

Like this:
```vim
let g:python3_host_prog = '/bin/python3'
```

#### Some other custom settings

You can find __Line 61__ in the `init.vim` to set your own `leader`.


## Key Mappings

These are my Key Mappings,of course you can change them.

| Insert Key | origin Key |
|------------|------------|
| ;;         | ESC A ;    |
| .,         | ESC A      |
| ?a         | ESC la     |
| ?O         | ESC O      |
| ?o         | ESC o      |
| ?I         | ESC I      |
| ?h         | ESC i      |
| ,x         | ESC xa     |
| .x         | ESC lxa    |
| ,X         | ESC xi     |
| .X         | ESC lxi    |

| Normal Key | origin Key   |
|------------|--------------|
| cl         | :bp CR       |
| cn         | :bn CR       |
| cw         | :w CR        |
| cq         | :q CR        |
| wq         | :wq CR       |
| wa         | :qa CR       |
| eq         | :q! CR       |
| bf         | :buffers CR  |
| et         | :edit        |
| sp         | :split       |
| vs         | :vsplit      |
| va         | C-w +        |
| vr         | C-w -        |
| ve         | C-w =        |
| vj         | C-w j        |
| vk         | C-w k        |
| vh         | C-w h        |
| vl         | C-w l        |
| tm         | :terminal CR |
| bd         | :bd CR       |
| die        | :noh CR      |
| leader-r   | RunCodes     |


## The End

Hope you can use these well.

```vim
 _   _                 _           
| \ | | ___  _____   _(_)_ __ ___  
|  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
| |\  |  __/ (_) \ V /| | | | | | |
|_| \_|\___|\___/ \_/ |_|_| |_| |_|
```
