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
endif


" -- ------
" -- ------ The Python Path
" -- ------

let g:python3_host_prog = ''


" -- ------
" -- ------ Important Settings
" -- ------

let &t_ul=''
set autochdir


" -- ------
" -- ------ Basic Setting
" -- ------

set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
set number
set tabstop=4
set shiftwidth=4
set showcmd
set syntax=enable
set syntax=on
set noswapfile
set noexpandtab
set showmatch
set ruler
set smartcase
set history=800
set scrolloff=5
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set list
set listchars=tab:\|\ ,trail:-
set guicursor=i:ver1
set relativenumber
set autoindent
set splitright
set nosplitbelow
set path=.,/usr/include,/usr/local/include/
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
hi Normal ctermfg=252 ctermbg=none
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
inoremap ?? ?
inoremap ,x <ESC>xi
inoremap .x <ESC>lxi
nmap J 5j
nmap K 5k
nmap ; :
nmap > >>
nmap < <<
nmap H hi
nmap W Wi
nmap B Bi
nmap E Ea
nmap <silent> cl :bp<CR>
nmap <silent> cn :bn<CR>
nmap <silent> cww :w<CR>
nmap <silent> cq :q<CR>
nmap <silent> cwq :wq<CR>
nmap <silent> ca :qa<CR>
nmap <silent> ceq :q!<CR>
nmap <silent> cf :buffers<CR>
nmap ce :edit<Space>
nmap sp :split<Space>
nnoremap vv v
nmap vs :vsplit<Space>
nmap va <C-w>+
nmap vr <C-w>-
nmap ve <C-w>=
nmap vj <C-w>j
nmap vk <C-w>k
nmap vh <C-w>h
nmap vl <C-w>l
nmap <silent> tm :vsplit<CR><C-W>l:terminal<CR>GA
nmap <silent> cb :bd<CR>
nmap <silent> cd :nohlsearch<CR>
nmap sr :r<Space>
nmap sh :!
nmap ch :checkhealth<CR>
nmap cp :checkhealth provider<CR>
nmap <leader><Return> gf
nmap vw :source $MYVIMRC<CR>

" PlaceHolder
inoremap <silent> ,p <ESC>/<+++><CR>:nohlsearch<CR>c5l
inoremap <silent> ?p <ESC>/<+++><CR>N:nohlsearch<CR>c5l
inoremap .p <+++>

" Markdown
autocmd filetype markdown inoremap ( (
autocmd filetype markdown inoremap [ [
autocmd filetype markdown inoremap { {
autocmd filetype markdown inoremap < <
autocmd filetype markdown inoremap " "
autocmd filetype markdown inoremap ' '

" vimScript
auto filetype vim inoremap " "

" Explain
autocmd filetype html inoremap ?/ <!--<Space>--><ESC>hhi
autocmd filetype css inoremap ?/ /*<Space>*/<ESC>hi
autocmd filetype javascript inoremap ?/ /*<Space>*/<ESC>hi
autocmd filetype php inoremap ?/ /*<Space>*/<ESC>hi
autocmd filetype vim inoremap ?/ "<Space>
autocmd filetype python inoremap ?/ #<Space>
autocmd filetype c inoremap ?/ /*<Space>*/<ESC>hi
autocmd filetype cpp inoremap ?/ /*<Space>*/<ESC>hi
autocmd filetype sh inoremap ?/ #<Space>
autocmd filetype java inoremap ?/ /*<Space>*/<ESC>hi


" -- ------
" -- ------ Other Settings
" -- ------

filetype indent on
set smartindent


" -- ------
" -- ------ Plugins Install
" -- ------

call plug#begin('~/.config/nvim/plugged')

" TheBegining
Plug 'mhinz/vim-startify'

" TheAirline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

" Space-vim-theme
Plug 'liuchengxu/space-vim-theme'

" TheNerdTree
Plug 'scrooloose/nerdtree'

" Coc.nvim
Plug 'neoclide/coc.nvim' , {'branch': 'release'}

" VimTableMode
Plug 'dhruvasagar/vim-table-mode'

" Ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" MarkDown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install', 'for' :['markdown', 'vim-plug'] }

" Undotree
Plug 'mbbill/undotree'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" JavaScript
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }


call plug#end()


" -- ------
" -- ------ Plugins Settings
" -- ------

" AirLine
let g:airline#extentions#tabline#enable = 1 " Show the Buffers' Line
let g:airline_theme='dracula'
let g:space_vim_transp_bg = 1
set background=dark
colorscheme space_vim_theme

" NerdTree
nnoremap <silent> tt :NERDTreeMirror<CR>
nnoremap <silent> tt :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" coc.nvim
set hidden
set updatetime=300
" Plugins
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-css', 'coc-phpls', 'coc-json', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-kite']
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> gk :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
autocmd!
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" VimTableMode
nnoremap <leader>tm :TableModeToggle<CR>
let g:table_mode_corner = '|'
let g:table_mode_delimiter = ''
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

" UltiSnips
let g:tex_flavor = "latex"
let g:UltiSnipsExpandTrigger = "<C-d>"
let g:UltiSnipsJumpForwardTrigger = "<C-d>"
let g:UltiSnipsJumpBackwardTrigger = "<C-b>"
let g:UltiSnipsSnippetDirectories = ['Ultisnips']
let g:UltiSnipsEditSplit = "vertical"

" Undotree
nnoremap <leader>ut :UndotreeToggle<CR>
if has("persistent_undo")
    set undodir="/home/spring/.undodir"
    set undofile
endif

" Fuzzy Finder
nmap <leader>F :FZF<CR>
nmap <leader>ff :FZF<Space>

" Markdown Preview
 nmap <leader>mdp <Plug>MarkdownPreview
 let g:mkdp_auto_start = 0
 let g:mkdp_auto_close = 1
 let g:mkdp_refresh_slow = 0
 let g:mkdp_command_for_global = 0
 let g:mkdp_open_to_the_world = 0
 let g:mkdp_open_ip = ''
 let g:mkdp_browser = 'google-chrome-stable'
 let g:mkdp_echo_preview_url = 1
 let g:mkdp_browserfunc = ''
 let g:mkdp_preview_options = {
 	\ 'mkit': {},
 	\ 'katex': {},
 	\ 'uml': {},
 	\ 'maid': {},
 	\ 'disable_sync_scroll': 0,
 	\ 'sync_scroll_type': 'middle',
 	\ 'hide_yaml_meta': 1,
 	\ 'sequence_diagrams': {}
 	\ }
 let g:mkdp_markdown_css = ''
 let g:mkdp_highlight_css = ''
 let g:mkdp_port = ''
 let g:mkdp_page_title = '「${name}」'

" vim-javascript
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"


" -- ------
" -- ------ Programming Settings
" -- ------

function! TermSet() " The function was written for set the split position.
	:set splitbelow
	:split
	:set nosplitbelow
endfunction

function! RunCodes(runType) " By the filetype to run the code.
	exec "w"
	if &filetype == 'html'
		!google-chrome-stable ./% &
	elseif &filetype == 'php'
		exec "!php -S 127.0.0.1:8080 -t ./ &"
		exec "!google-chrome-stable 127.0.0.1:8080"
	elseif &filetype == 'sh'
		if a:runType == 'interactive'
			:call TermSet()
			:terminal sh ./%
		elseif a:runType == 'normal'
			exec "!chmod +x ./%"
			exec "!./%"
		endif
	elseif &filetype == 'python'
		if a:runType == 'interactive'
			:call TermSet()
			:terminal python3 ./%
		elseif a:runType == 'normal'
			!python3 ./%
		endif
	elseif &filetype == 'c'
		if a:runType == 'interactive'
			:call TermSet()
			:terminal gcc % -o %<.o; ./%<.o
		elseif a:runType == 'normal'
			exec "!gcc % -o %<.o"
			exec "!./%<.o"
		endif
	elseif &filetype == 'markdown'
		!google-chrome-stable ./%
	elseif &filetype == 'go'
		if a:runType == 'interactive'
			:call TermSet()
			:terminal go run ./%
		elseif a:runType == 'normal'
			!go run ./%
		endif
	endif
endfunction

function! DelCodesCache()
	if &filetype == 'c'
		!rm ./%<.o
	elseif &filetype == 'cpp'
		!rm ./%<.o
	endif
endfunction

nnoremap <silent> <leader>r :call RunCodes("normal")<CR>
nnoremap <silent> <leader>ir :call RunCodes("interactive")<CR>
nnoremap <silent> <leader>d :call DelCodesCache()<CR>
nnoremap <silent> <leader>c :only<CR>
