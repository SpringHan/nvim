"	  __  __         _   _                 _                    
"	 |  \/  |_   _  | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
"	 | |\/| | | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
"	 | |  | | |_| | | |\  |  __/ (_) \ V /| | | | | | | | | (__ 
"	 |_|  |_|\__, | |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"			 |___/                                              


" @Author: SpringHan (https://www.github.com/SpringHan/)
" @Date: 2020.1.2

" Tips:
" --- I use the 'vim-plug' to control my plugins.
" --- You can rewrite my Key Mappings.
" --- Some Settings should be set by yourself accroding to the situations.


" -- ------
" -- ------ Autoload on the first time
" -- ------

if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	silent !mv ~/.config/nvim/Ultisnips/ ~/.config/nvim/plugged/ultisnips/
endif


" -- ------
" -- ------ The Python Path
" -- ------

let g:python3_host_prog = ''


" -- ------
" -- ------ Basic Setting
" -- ------

set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
set nu
set tabstop=4
set shiftwidth=4
set showcmd
set syntax=enable
set syntax=on
set noswapfile
set noexpandtab
set showmatch
set ruler
set history=800
set scrolloff=5
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set guicursor=i:ver1
set relativenumber
set autoindent
set splitright
set splitbelow
let g:mapleader = ""


" -- ------
" -- ------ Key Mappings
" -- ------

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap ,. <ESC>
inoremap ;; <ESC>A;
inoremap ,; ;
inoremap ., <ESC>A
inoremap .. .
inoremap ,, ,
inoremap ?a <ESC>la
inoremap ?O <ESC>O
inoremap ?o <ESC>o
inoremap ?I <ESC>I
inoremap ?h <ESC>i
inoremap ,x <ESC>xa
inoremap .x <ESC>lxa
inoremap ,X <ESC>xi
inoremap .X <ESC>lxi
nmap <silent> <C-n> :bp<CR>
nmap <silent> <C-m> :bn<CR>
nmap <silent> <C-r> :w<CR>
nmap <silent> <C-e> :q<CR>
nmap <silent> wq :qa<CR>
nmap <silent> eq :q!<CR>
nmap <silent> bf :buffers<CR>
nmap et :edit<Space>
nmap sp :split<Space>
nmap vs :vsplit<Space>
nmap <silent> tm :vsplit<CR><C-W>l:terminal<CR>GA
nmap <silent> bd :bd<CR>
nmap <silent> die :nohlsearch<CR>
nmap fl :r !figlet<Space>
nmap sh :!
vmap qq <ESC>

"PlaceHolder
inoremap <silent> ,p <ESC>/<+++><CR>:nohlsearch<CR>c5l
inoremap <silent> ?p <ESC>/<+++><CR>N:nohlsearch<CR>c5l
inoremap .p <+++>
inoremap <silent> ,P <ESC>/<++><CR>:nohlsearch<CR>c4l
inoremap <silent> ?P <ESC>/<++><CR>N:nohlsearch<CR>c4l
inoremap .P <++>

"vim-mark
source ~/.config/nvim/plugged/vim-marks/vim-marks.vim "Source the `vim-marks` plugin.

"Markdown
autocmd filetype markdown inoremap ( (
autocmd filetype markdown inoremap [ [
autocmd filetype markdown inoremap { {
autocmd filetype markdown inoremap < <
autocmd filetype markdown inoremap " "
autocmd filetype markdown inoremap ' '


" -- ------
" -- ------ Other Settings
" -- ------

filetype indent on
set smartindent


" -- ------
" -- ------ Plugins Install
" -- ------

call plug#begin('~/.config/nvim/plugged')

"TheBegining
Plug 'mhinz/vim-startify'

"TheAirline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"TheNerdTree
Plug 'scrooloose/nerdtree'

"AutoTag
Plug 'neoclide/coc.nvim' , {'branch': 'release'}

"VimTableMode
Plug 'dhruvasagar/vim-table-mode'

"Ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()


" -- ------
" -- ------ Plugins Settings
" -- ------

"AirLine
let g:airline#extentions#tabline#enable = 1 "Show the Buffers' Line
let g:airline_theme='ouo'
colorscheme xcodedark

"NerdTree
nnoremap <silent> tt :NERDTreeMirror<CR>
nnoremap <silent> tt :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

"Coc.nvim
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"VimTableMode
nnoremap <leader>tm :TableModeToggle<CR>
let g:table_mode_corner = '|'
let g:table_mode_delimiter = ''
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

"UltiSnips
let g:tex_flavor = "latex"
let g:UltiSnipsExpandTrigger = "<C-d>"
let g:UltiSnipsJumpForwardTrigger = "<C-d>"
let g:UltiSnipsJumpBackwardTrigger = "<C-b>"
let g:UltiSnipsSnippetDirectories = ['Ultisnips']
let g:UltiSnipsEditSplit = "vertical"
nmap <silent> <leader>use :vsplit<CR><C-w>l:edit ~/.config/nvim/plugged/ultisnips/Ultisnips/<CR>


" -- ------
" -- ------ Programming Settings
" -- ------

function! TermSet() " The function was written for set the split position.
	:vs
endfunction

function! RunCodes() " By the filetype to run the code.
	exec "w"
	if &filetype == 'html'
		:call TermSet()
		:terminal chromium --no-sandbox ./%
	elseif &filetype == 'sh'
		:call TermSet()
		:terminal sh ./%
	elseif &filetype == 'python'
		:call TermSet()
		:terminal python3 ./%
	elseif &filetype == 'c'
		:call TermSet()
		:terminal gcc % -o %<;./%<
	elseif &filetype == 'markdown'
		:call TermSet()
		:terminal google-chrome --no-sandbox ./%
	endif
endfunction

nnoremap <silent> <leader>r :call RunCodes()<CR>
nnoremap <silent> <leader>c :only<CR>
