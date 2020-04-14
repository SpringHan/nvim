"	  __  __         _   _                 _                    
"	 |  \/  |_   _  | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
"	 | |\/| | | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
"	 | |  | | |_| | | |\  |  __/ (_) \ V /| | | | | | | | | (__ 
"	 |_|  |_|\__, | |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"					 |___/                                              


" @Author: SpringHan (https://www.github.com/SpringHan/)
" @Date: 2020.4.1

" Tips:
" --- I use the 'vim-plug' to control my plugins.
" --- You can rewrite my Key Mappings.
" --- Some Settings should be set by yourself accroding to the situations.


" -- ------
" -- ------ Autoload on the first time
" -- ------

if empty(glob('~/.config/nvim/plugged/'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
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
set noswapfile
set noexpandtab
set showmatch
set ruler
set noshowmode
set showtabline=1
set smartcase
set notimeout
set ttimeoutlen=0
set lazyredraw
set visualbell
set history=800
set scrolloff=5
set hlsearch
set incsearch
set cursorline
set list
set listchars=tab:\┆\ ,trail:-
hi CursorLine ctermbg=darkred ctermfg=white guibg=darkred guifg=white
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
syntax enable
syntax on


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
nnoremap cW cw
nnoremap cE ce
nnoremap cB cb
nnoremap L e

" Insert bindings
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
inoremap ?< <ESC><<a
inoremap ?> <ESC>>>a
inoremap ,x <ESC>xa
inoremap ,X <ESC>xi
inoremap .x <ESC>lxi
inoremap <C-x> <C-x><C-s>
inoremap .z <ESC>zza
inoremap \\ \

" Normal Bindings
nnoremap ; :
nnoremap > >>
nnoremap < <<
nnoremap <silent> cl :bp<CR>
nnoremap <silent> cn :bn<CR>
nnoremap <silent> cww :w<CR>
nnoremap <silent> cq :q<CR>
nnoremap <silent> cwq :wq<CR>
nnoremap <silent> ca :qa<CR>
nnoremap <silent> ceq :q!<CR>
nnoremap <silent> cf :buffers<CR>
nnoremap cet :edit<Space>
nnoremap va <C-w>+
nnoremap vx <C-w>-
nnoremap vj <C-w>=
nnoremap ve <C-w>j
nnoremap vu <C-w>k
nnoremap vn <C-w>h
nnoremap vi <C-w>l
nnoremap vE <C-w>J
nnoremap vU <C-w>K
nnoremap vN <C-w>H
nnoremap vI <C-w>L
nnoremap vr <C-w>r
nnoremap vR <C-w>R
nnoremap <silent> tm :vsplit<CR><C-W>l:terminal<CR><C-\><C-n>:setlocal nonumber norelativenumber<CR>A
nnoremap <silent> cb :bd<CR>
nnoremap <silent> cd :nohlsearch<CR>
nnoremap sr :r<Space>
nnoremap sh :!
nnoremap <leader><Return> gf
nnoremap <leader>nrc :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>nst :e ~/.config/nvim/snippets.vim<CR>
nnoremap <silent> vw :source ~/.config/nvim/init.vim<CR>:call ReloadSyntax(2)<CR>:nohlsearch<CR>
nnoremap css :set spell!<CR>
nnoremap sc z=
nnoremap vv v
nnoremap spt :set nosplitbelow<CR>:split<Space>
nnoremap spb :set splitbelow<CR>:split<Space>
nnoremap vsr :set splitright<CR>:vsplit<Space>
nnoremap vsl :set nosplitright<CR>:vsplit<Space>
nnoremap csc :%s/\r//<CR>

" Other mode bingdings
xmap ; :

" PlaceHolder
nnoremap <silent> <leader><leader> /<+++><CR>:nohlsearch<CR>c5l
inoremap <silent> ,p <ESC>/<+++><CR>:nohlsearch<CR>c5l
inoremap <silent> ?p <ESC>/<+++><CR>N:nohlsearch<CR>c5l
inoremap .p <+++>

" Notes
nnoremap <silent> <leader>la :call ReloadSyntax(1)<CR>
nnoremap <silent> <leader>lna :call ReloadSyntax(2)<CR>
nnoremap <silent> <leader>te :exec "!touch ./".expand("<cWORD>")<CR>
nnoremap <silent> <leader>ww :e ~/Github/StudyNotes/index.md<CR>

" Snippets
source ~/.config/nvim/often-snippets.vim
autocmd filetype markdown source ~/.config/nvim/md-snippets.vim

" Tab
nnoremap tn :tabnew<CR>
nnoremap te :tabedit<Space>
nnoremap ctn :tabnext<CR>
nnoremap ctp :tabprevious<CR>
nnoremap ctf :tabfirst<CR>
nnoremap ctl :tablast<CR>
nnoremap cta :+tabmove<CR>
nnoremap ctr :-tabmove<CR>
nnoremap ctc :tabclose<CR>
nnoremap cto :tabonly<CR>


" -- ------
" -- ------ Other Settings
" -- ------

filetype indent on
set smartindent

" Terminal
autocmd TermOpen term://* startinsert
tnoremap <silent> <C-q> <C-\><C-n>:q!<CR>
tnoremap <silent> <C-h> <C-\><C-n><C-w>h
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


" -- ------
" -- ------ Plugins Install
" -- ------

call plug#begin('~/.config/nvim/plugged')

" TheBegining
Plug 'mhinz/vim-startify'

" StatusLine
"Plug 'itchyny/vim-gitbranch'
Plug 'Styadev/HicusLine', { 'branch': 'master' }
Plug 'bling/vim-bufferline'

" vim-style
"Plug 'liuchengxu/space-vim-theme'
"Plug 'morhetz/gruvbox'
Plug 'SpringHan/vim-deus'

" Autosuggestion
Plug 'neoclide/coc.nvim' , { 'branch': 'release' }
Plug 'mattn/emmet-vim', { 'for': 'html' }

" VimTableMode
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

" Reader
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install', 'for': 'markdown' }

" Undotree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all', 'on': 'FZF' }

" Highlight
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" Tagbar
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" Far
Plug 'brooth/far.vim', { 'on': 'Far' }

" Auto-pairs
Plug 'jiangmiao/auto-pairs'

" vim-easy-align
Plug 'junegunn/vim-easy-align'

" Special Words
Plug 'RRethy/vim-illuminate'

" Todo
Plug 'SpringHan/lightTodo.vim', { 'on': 'LightTodoToggle' }

" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" Ranger
Plug 'kevinhwang91/rnvimr', { 'do': 'make sync', 'on': [ 'RnvimrToggle', 'RnvimrSync' ] }

" Useful plugin
Plug 'tpope/vim-surround'
Plug 'MattesGroeger/vim-bookmarks'

" Translation
"Plug 'denstiny/Terslation'
Plug 'SpringHan/Terslation.vim', { 'on': 'TerslationToggle' }

call plug#end()


" -- ------
" -- ------ Plugins Settings
" -- ------


" NeoVim Styles
set termguicolors
colorscheme deus

" Coc.nvim
let g:coc_start_at_startup = 0
function! CocTimerStart(timer)
	exec "CocStart"
endfunction
call timer_start(300, 'CocTimerStart', {'repeat': 1})
set hidden
set updatetime=50
" Plugins
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-css', 'coc-phpls', 'coc-json', 'coc-tsserver', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-kite', 'coc-yank', ]
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nnoremap <silent> <TAB> <Plug>(coc-range-select)
xnoremap <silent> <TAB> <Plug>(coc-range-select)
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
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
nnoremap <leader>crn <Plug>(coc-rename)
xnoremap <leader>f  <Plug>(coc-format-selected)
nnoremap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
autocmd!
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xnoremap <leader>a  <Plug>(coc-codeaction-selected)
nnoremap <leader>a  <Plug>(coc-codeaction-selected)
nnoremap <leader>ac <Plug>(coc-codeaction)
nnoremap <leader>qf <Plug>(coc-fix-current)

command! -nargs=0 Format :call CocAction('format')
command! -nargs=? Fold :call CocAction('fold', <f-args>)
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

inoremap <expr> <CR>    pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
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
nnoremap <silent> tt :CocCommand explorer<CR>
nnoremap <silent> <leader>cfg :CocConfig<CR>
nnoremap <silent> <leader>y :<C-u>CocList -A --normal yank<CR>
nnoremap <silent> <leader>cy :CocCommand yank.clean<CR>

" VimTableMode
nnoremap <leader>tm :TableModeToggle<CR>
let g:table_mode_corner = '|'
let g:table_mode_delimiter = ''
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

" Undotree
nnoremap <leader>ut :UndotreeToggle<CR>
function g:Undotree_CustomMap()
		nmap <buffer> U <plug>UndotreeNextState
		nmap <buffer> E <plug>UndotreePreviousState
endfunc
if has("persistent_undo")
	set undofile
	set undodir=~/.config/nvim/do_history
endif

" Fuzzy Finder
nmap <leader>FZ :FZF<CR>
nmap <leader>ff :FZF<Space>

" Markdown Preview
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
nnoremap <leader>T :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'

" Far.vim
nnoremap <leader>FA :Far %<Left><Left><Space>

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

" LightTodo
nnoremap <leader>tt  :LightTodoToggle<CR>
nnoremap <leader>taa :LightTodoAdd<CR>
nnoremap <leader>tld :LightTodoDone<CR>
nnoremap <leader>tu  :LightTodoUndone<CR>
nnoremap <leader>tad :LightTodoAllDone<CR>
nnoremap <leader>tau :LightTodoAllUndone<CR>
nnoremap <leader>td  :LightTodoDelete<CR>
nnoremap <leader>tc  :LightTodoClean<CR>
let g:LightTodoFile = $HOME.'/.todo'

" HicusLine
set laststatus=2
let g:HicusLineEnabled = 1
let g:HicusColorSetWay = 1
let g:HicusLine = {
			\ 'active': {
			\     'left': [ 'modehighlight', 'space', 'mode', 'space', 'spell',
			\               '%#infos#', 'gitinfo', 0, 'modified', 'filename',
			\               'readonly', 'space', '%#ErrorStatus#', 'errorstatus',
			\               'space', '%#WarningStatus#', 'warningstatus', 0, ],
			\     'right': [ 'filetype3', 'space', '%#infos#', 'space','fileencoding',
			\                'space', 'fileformat', 'space', 'modehighlight', 'space',
			\                'linenumber', ':', 'bufferlinesnumber', 'space',
			\                'windowpercentage', 'space', ],
			\ },
			\ 'basic_option': {
			\     'ErrorSign': '●',
			\     'WarningSign': '●',
			\ },
\}
let g:HicusLineMode = {
			\ 'n':      [ 'NORMAL', 'normalmode', { 'infos': 'normalinfos', }, ],
			\ 'i':      [ 'INSERT', 'insertmode', { 'infos': 'otherinfos',  }, ],
			\ 'R':      [ 'REPLACE', 'replacemode', { 'infos': 'otherinfos',  }, ],
			\ 'v':      [ 'VISUAL', 'visualmode', { 'infos': 'otherinfos',  }, ],
			\ 'V':      [ 'L-VISU', 'visualmode', { 'infos': 'otherinfos',  }, ],
			\ "\<C-v>": [ 'B-VISU', 'visualmode', { 'infos': 'otherinfos',  }, ],
			\ 'c':      [ 'COMMAND', 'commandmode', { 'infos': 'otherinfos',  }, ],
			\ 's':      [ 'SELECT', 'normalmode', { 'infos': 'normalinfos',  }, ],
			\ 'S':      [ 'L-SELE', 'normalmode', { 'infos': 'normalinfos',  }, ],
			\ "\<C-s>": [ 'B-SELE', 'normalmode', { 'infos': 'normalinfos',  }, ],
			\ 't':      [ 'TERMINAL', 'normalmode', { 'infos': 'normalinfos',  }, ],
\}
let g:HicusColor = {
			\ 'StatusLine':     [ 'none' ,'#8BE9FD', '#44475A', ],
			\ 'normalmode':     [ 'bold' ,'#282A36', '#BD93F9', ],
			\ 'insertmode':     [ 'bold', '#282A36', '#50FA7B', ],
			\ 'visualmode':     [ 'bold', '#282A36', '#FFB86C', ],
			\ 'replacemode':    [ 'bold', '#282A36', '#FF5555', ],
			\ 'commandmode':    [ 'bold', '#C6C6C6', '#3A81C3', ],
			\ 'normalinfos':    [ 'none', '#FFFFFF', '#6272A4', ],
			\ 'otherinfos':     [ 'none', '#44475A', '#8BE9FD', ],
			\ 'ErrorStatus':    [ 'none', '#FF0033', '#44475A', ],
			\ 'WarningStatus':  [ 'none', '#FFCC00', '#44475A', ],
\}

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" emmet
let g:user_emmet_mode = 'i'
let g:user_emmet_leader_key = '<C-r>'

" Rnvimr
nnoremap <silent> <leader>Rt :RnvimrToggle<CR>
nnoremap <silent> <leader>Rs :RnvimrSync<CR>
let g:rnvimr_layout = { 'relative': 'editor',
			\ 'width':  float2nr(round(0.95 * &columns)),
			\ 'height': float2nr(round(0.95 * &lines)),
			\ 'col':    float2nr(round(0.03 * &columns)),
			\ 'row':    float2nr(round(0.03 * &lines)),
			\ 'style':  'minimal', }

" vim-bookmarks
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_no_default_key_mappings = 1
let g:bookmark_sign = '>>'
let g:bookmark_annotation_sign = '##'
let g:bookmark_save_per_working_dir = 0
let g:bookmark_auto_save_file = $HOME.'/.config/nvim/.vim-bookmarks'
nmap <leader>mm <Plug>BookmarkToggle
nmap <leader>mi <Plug>BookmarkAnnotate
nmap <leader>ma <Plug>BookmarkShowAll
nmap <leader>mn <Plug>BookmarkNext
nmap <leader>mp <Plug>BookmarkPrev
nmap <leader>mc <Plug>BookmarkClear
nmap <leader>mx <Plug>BookmarkClearAll
nmap <Leader>mP <Plug>BookmarkMoveUp
nmap <Leader>mN <Plug>BookmarkMoveDown
nmap <Leader>mt <Plug>BookmarkMoveToLine

" Illuminate
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl

" Terslation.vim
nnoremap <silent><leader>tp "tp
nnoremap <silent><leader>ts :TerslationToggle<CR>
nnoremap <silent><leader>tws :TerslationWordTrans<CR>


" -- ------
" -- ------ Programming Settings
" -- ------

function! TermSet() " The function was written for set the split position.
	set splitbelow
	split
	set nosplitbelow
endfunction

function! TestCodes(type) " By the filetype to run the code.
	exec "w"
	if &filetype == 'html'
		exec "!google-chrome-stable ./% &"
	elseif &filetype == 'php'
		exec a:type == 0?"!php -S 127.0.0.1:8080 -t ./ &":"killall php"
		exec a:type == 0?"!google-chrome-stable 127.0.0.1:8080 &":""
	elseif &filetype == 'sh'
		call TermSet()
		terminal sh ./%
	elseif &filetype == 'python'
		call TermSet()
		terminal python3 ./%
	elseif &filetype == 'c'
		call TermSet()
		terminal gcc % -o /tmp/%<.o; /tmp/%<.o
	elseif &filetype == 'markdown'
		exec a:type == 0?"MarkdownPreview":"MarkdownPreviewStop"
	elseif &filetype == 'go'
		call TermSet()
		terminal go run ./%
	endif
endfunction

function! ReloadSyntax(type)
	syntax on
	if &filetype == 'markdown' || a:type == 1
		hi Normal ctermfg=None ctermbg=None guifg=None guibg=None
		set colorcolumn=""
	elseif a:type == 2
		set colorcolumn=80
		hi Over80 cterm=bold ctermbg=241 gui=bold guibg=#665C54
		au BufNewFile,BufRead * :match Over80 /.\%>81v/
	endif
	hi illuminatedWord cterm=undercurl gui=undercurl
	exec a:type != 0?"HicusSyntaxReload":""
	"hi TabLine gui=None guifg=#FFFFFF guibg=#6272A4
	"hi TabLineFill gui=None guifg=#8BE9FD guibg=#44475A
	"hi TabLineSel gui=bold guifg=#282A36 guibg=#BD93F9
endfunction

"function! TabLineTest()
"	let l:test = tabpagenr().' %f'
"	for l:i in range(tabpagenr('$'))
"	endfor
"	return l:test
"endfunction

"set tabline=%!TabLineTest()

hi Over80 cterm=bold ctermbg=241 gui=bold guibg=#665C54
au BufNewFile,BufRead * :match Over80 /.\%>81v/

nnoremap <silent> <leader>r :call TestCodes(0)<CR>
nnoremap <silent> <leader>sr :call TestCodes(1)<CR>
nnoremap <silent> co :only<CR>

" Debug
"set runtimepath+=~/Github/HicusLine
"set runtimepath+=~/Github/Terslation.vim
