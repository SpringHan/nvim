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
" -- ------ The Path
" -- ------

let g:python_host_skip_check=1
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_skip_check=1
let g:python3_host_prog = '/usr/bin/python3'


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
set tabstop=2
set shiftwidth=2
set showcmd
set syntax=enable
set syntax=on
set noswapfile
set noexpandtab
set showmatch
set ruler
set noshowmode
set smartcase
set notimeout
set ttimeoutlen=0
set lazyredraw
set visualbell
set history=800
set scrolloff=5
set cursorline
set list
set listchars=tab:\┆\ ,trail:-
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set viewoptions=cursor,folds,slash,unix
set wildmenu
set wildmode=full
set wildchar=<Tab>
set guicursor=n:block,i:ver1,v:block,r:block,c:block,ci:block,cr:block
set relativenumber
set autoindent
set path=.,/usr/include,/usr/local/include/
set foldmethod=marker
set foldlevelstart=99
set colorcolumn=80
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
let g:mapleader = "\<Space>"


" -- ------
" -- ------ Key Mappings
" -- ------

" Important Mappings
noremap e j
noremap i l
noremap u k
noremap U 5k
noremap E 5j
noremap N 5h
noremap I 5l
noremap l u
noremap h i
noremap k n
noremap K N
noremap H I
noremap n h
nnoremap ci ci
nnoremap cI cl
nnoremap C c
nnoremap vI :call LoadIndent()

inoremap .* /* */<ESC>hi
inoremap ;; <ESC>A;
inoremap ,; ;
inoremap ., <ESC>A
inoremap .. .
inoremap .fl {{{
inoremap .fn }}}
inoremap ,, ,
inoremap ?a <ESC>la
inoremap ?O <ESC>O
inoremap ?o <ESC>o
inoremap ?I <ESC>I
inoremap ?h <ESC>i
inoremap ?? ?
inoremap ,x <ESC>xa
inoremap ,X <ESC>xi
inoremap .x <ESC>lxi

nmap ; :
nmap > >>
nmap < <<
nmap <silent> cl :bp<CR>
nmap <silent> cn :bn<CR>
nmap <silent> cww :w<CR>
nmap <silent> cq :q<CR>
nmap <silent> cwq :wq<CR>
nmap <silent> ca :qa<CR>
nmap <silent> ceq :q!<CR>
nmap <silent> cf :buffers<CR>
nmap cet :edit<Space>
nmap va <C-w>+
nmap vr <C-w>-
nmap ve <C-w>=
nmap vj <C-w>j
nmap vk <C-w>k
nmap vh <C-w>h
nmap vl <C-w>l
nmap <silent> tm :vsplit<CR><C-W>l:terminal<CR>
nmap <silent> cb :bd<CR>
nmap <silent> cd :nohlsearch<CR>
nmap sr :r<Space>
nmap sh :!
nmap ch :checkhealth<CR>
nmap <leader><Return> gf
nmap <leader>nrc :e ~/.config/nvim/init.vim<CR>
nmap <leader>nst :e ~/.config/nvim/snippets.vim<CR>
nnoremap <silent> vw :source ~/.config/nvim/init.vim<CR>:call ReloadSyntax()<CR>
nnoremap css :set spell<CR>
nnoremap csn :set spell!<CR>
nnoremap sc z=
nnoremap vv v
nnoremap spt :set nosplitbelow<CR>:split<Space>
nnoremap spb :set splitbelow<CR>:split<Space>
nnoremap vsr :set splitright<CR>:vsplit<Space>
nnoremap vsl :set nosplitright<CR>:vsplit<Space>
xmap ; :

" PlaceHolder
nmap <silent> <leader><leader> /<+++><CR>:nohlsearch<CR>c5l
inoremap <silent> ,p <ESC>/<+++><CR>:nohlsearch<CR>c5l
inoremap <silent> ?p <ESC>/<+++><CR>N:nohlsearch<CR>c5l
inoremap .p <+++>

" Snippets
source ~/.config/nvim/snippets.vim


" -- ------
" -- ------ Other Settings
" -- ------

filetype indent on
set smartindent

" Terminal
autocmd TermOpen term://* startinsert
tnoremap <silent> <C-q> <C-\><C-n>:q<CR>


" -- ------
" -- ------ Plugins Install
" -- ------

call plug#begin('~/.config/nvim/plugged')

" TheBegining
Plug 'mhinz/vim-startify'

" StatusLine
Plug 'itchyny/lightline.vim'
Plug 'SpringHan/dracula'
Plug 'itchyny/vim-gitbranch'
Plug 'taohexxx/lightline-buffer'

" vim-style
"Plug 'liuchengxu/space-vim-theme'
Plug 'morhetz/gruvbox'

" TheNerdTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Coc.nvim
Plug 'neoclide/coc.nvim' , { 'branch': 'release' }

" VimTableMode
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

" Ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" MarkDown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install', 'for': 'markdown' }

" Undotree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all', 'on': 'FZF' }

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" Tagbar
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" Far
Plug 'brooth/far.vim', { 'on': 'Far' }

" Bash-language-server
Plug 'mads-hartmann/bash-language-server', { 'for': 'sh' }

" Auto-pairs
Plug 'jiangmiao/auto-pairs'

" vim-easy-align
Plug 'junegunn/vim-easy-align'

" Special Words
Plug 'itchyny/vim-cursorword'

" vim-peekaboo
Plug 'junegunn/vim-peekaboo'

call plug#end()


" -- ------
" -- ------ Plugins Settings
" -- ------


" StatusLine
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set laststatus=2
let g:lightline = {
\  'colorscheme': 'dracula',
\  'active': {
\    'left': [ [ 'mode', 'paste' ],
\              [ 'gitbranch', 'readonly', 'modified' ],
\              [ 'separator' ],
\              [ 'bufferbefore','buffercurrent', 'bufferafter' ], ],
\    'right': [ [  'percent', 'lineinfo' ],
\               [ 'fileencoding', 'fileformat' ],
\               [ 'filetype' ] ],
\  },
\  'component_function': {
\    'gitbranch': 'gitbranch#name'
\  },
\  'component_expand': {
\    'buffercurrent': 'lightline#buffer#buffercurrent',
\    'bufferbefore': 'lightline#buffer#bufferbefore',
\    'bufferafter': 'lightline#buffer#bufferafter',
\  },
\  'component_type': {
\    'buffercurrent': 'tabsel',
\    'bufferbefore': 'raw',
\    'bufferafter': 'raw',
\  },
\  'component': {
\    'separator': '',
\  },
\  'mode_map': {
\    'n' : 'NOR',
\    'i' : 'INS',
\    'R' : 'REP',
\    'v' : 'VIS',
\    'V' : 'VI-L',
\    "\<C-v>": 'VI-B',
\    'c' : 'COM',
\    's' : 'SEL',
\    'S' : 'SE-L',
\    "\<C-s>": 'SE-B',
\    't': 'TER'
\  },
\  }
set background=dark
colorscheme gruvbox
hi Normal ctermfg=241 ctermbg=235 guifg=#6272A4 guibg=#282828
hi Over80 cterm=bold ctermbg=241 gui=bold guibg=#665C54
au BufNewFile,BufRead * :match Over80 /.\%>81v/

" NerdTree
nnoremap <silent> tt :NERDTreeMirror<CR>
nnoremap <silent> tt :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeMapUpdir = 'N'
let g:NERDTreeMapOpenVSplit = 'I'

" coc.nvim
let g:coc_start_at_startup = 0
function! CocTimerStart(timer)
	exec "CocStart"
endfunction
call timer_start(300, 'CocTimerStart', {'repeat': 1})
set hidden
set updatetime=50
" Plugins
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-css', 'coc-phpls', 'coc-json', 'coc-tsserver', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-kite']
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

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
noremap <silent> gk :call <SID>show_documentation()<CR>
function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>crn <Plug>(coc-rename)
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
nmap <leader>ac <Plug>(coc-codeaction)
nmap <leader>qf <Plug>(coc-fix-current)
" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Using CocList
nnoremap <silent> <space>a :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>co :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p :<C-u>CocListResume<CR>

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
  set undofile
  set undodir=~/.config/nvim/do_history
endif

" Fuzzy Finder
nmap <leader>FZ :FZF<CR>
nmap <leader>ff :FZF<Space>

" Markdown Preview
autocmd filetype markdown nmap <leader>md <Plug>MarkdownPreviewStop
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
\  'mkit': {},
\  'katex': {},
\  'uml': {},
\  'maid': {},
\  'disable_sync_scroll': 0,
\  'sync_scroll_type': 'middle',
\  'hide_yaml_meta': 1,
\  'sequence_diagrams': {}
\  }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" vim-javascript
let g:javascript_conceal_function                  = "ƒ"
let g:javascript_conceal_null                      = "ø"
let g:javascript_conceal_this                      = "@"
let g:javascript_conceal_return                    = "⇚"
let g:javascript_conceal_undefined                 = "¿"
let g:javascript_conceal_NaN                       = "ℕ"
let g:javascript_conceal_prototype                 = "¶"
let g:javascript_conceal_static                    = "•"
let g:javascript_conceal_super                     = "Ω"
let g:javascript_conceal_arrow_function            = "⇒"
let g:javascript_conceal_noarg_arrow_function      = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

" Tagbar
nmap <leader>T :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'

" Far.vim
nmap <leader>FA :Far %<Left><Left><Space>

" Auto-Pairs
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', '<':'>'}
let b:AutoPairs = g:AutoPairs
let g:AutoPairsShortcutToggle = '<M-p>'
let g:AutoPairsShortcutFastWrap = '<M-e>'
let g:AutoPairsShortcutJump = '<M-n>'
let g:AutoPairsMapBS = 0
let g:AutoPairsMapCh = 1
let g:AutoPairsMapCR = 1
let g:AutoPairsCenterLine = 1
let g:AutoPairsMapSpace = 1
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Vim-easy-align
xmap ga <Plug>(EasyAlign)

" Vim-peekaboo
xnoremap Y "+y
nnoremap P "+p


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
			:terminal gcc % -o /tmp/%<.o; /tmp/%<.o
		elseif a:runType == 'normal'
			exec "!gcc % -o /tmp/%<.o"
			exec "!/tmp/%<.o"
		endif
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'go'
		if a:runType == 'interactive'
			:call TermSet()
			:terminal go run ./%
		elseif a:runType == 'normal'
			!go run ./%
		endif
	endif
endfunction

function! ReloadSyntax()
	syntax on
	hi Normal ctermfg=241 ctermbg=235 guifg=#6272A4 guibg=#282828
	hi Over80 cterm=bold ctermbg=241 gui=bold guibg=#665C54
	au BufNewFile,BufRead * :match Over80 /.\%>81v/
endfunction

nnoremap <silent> <leader>r :call RunCodes("normal")<CR>
nnoremap <silent> <leader>ir :call RunCodes("interactive")<CR>
nnoremap <silent> co :only<CR>
