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
- [NERDTree](https://github.com/scrooloose/nerdtree) - A files tree in vim
- [coc.vim](https://github.com/neoclide/coc.vim) - A completor in vim
- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) - A Plugin which can help you format the tables.
- [Ultisnips](https://github.com/SirVer/ultisnips) - A Plugin which can provide code snippets in vim
- [vim-marks](https://github.com/SpringHan/MyNeovim) - This is my own Plugin,now it's only can use by `source`.(When I use `vim-signature`,I cannot delete my mark.So I writed a mark plugin by myself.Now it's not very good,but I use it very easy.)


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
| ,.         | ESC        |
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
| wq         | :qa CR       |
| eq         | :q! CR       |
| bf         | :buffers CR  |
| et         | :edit        |
| sp         | :split       |
| vs         | :vsplit      |
| tm         | :terminal CR |
| bd         | :bd CR       |
| die        | :noh CR      |
| fl         | :r !figlet   |
| leader-r   | RunCodes     |

| Visual Key | origin Key |
|------------|------------|
| qq         | ESC        |


## The End

Hope you can use these well.

```vim
 _   _                 _           
| \ | | ___  _____   _(_)_ __ ___  
|  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
| |\  |  __/ (_) \ V /| | | | | | |
|_| \_|\___|\___/ \_/ |_|_| |_| |_|
```
