"	       _                                      _        
"	__   _(_)_ __ ___        _ __ ___   __ _ _ __| | _____ 
"	\ \ / / | '_ ` _ \ _____| '_ ` _ \ / _` | '__| |/ / __|
"	 \ V /| | | | | | |_____| | | | | | (_| | |  |   <\__ \
"	  \_/ |_|_| |_| |_|     |_| |_| |_|\__,_|_|  |_|\_\___/


" @Author: SpringHan (https://www.github.com/SpringHan/)
" @Date: 2020.1.3

" This plugin can make so many marks to help you find your code.And it was
" created by vimscript.


" -- ------
" -- ------ The Find keys
" -- ------

"nmap
nnoremap <silent> <leader>f /M<CR>:nohlsearch<CR>
nnoremap <silent> <leader>f /M<CR>N:nohlsearch<CR>

"imap
inoremap <silent> ,f <ESC>/M<CR>:nohlsearch<CR>
inoremap <silent> ,f <ESC>/M<CR>N:nohlsearch<CR>


" -- ------
" -- ------ The Delete Keys
" -- ------

nnoremap <silent> <leader>md /M<Space><CR>Nc2l<ESC>:nohlsearch<CR>
nnoremap <silent> <leader>dma :%s/M<Space>//g<CR>


" -- ------
" -- ------ Key Mappings
" -- ------

autocmd filetype html nnoremap <leader>mm i<!-- M --><ESC>hhi
autocmd filetype css nnoremap <leader>mm i/* M */<ESC>hi
autocmd filetype javascript nnoremap <leader>mm i/* M */<ESC>hi
autocmd filetype php nnoremap <leader>mm i/* M */<ESC>hi
autocmd filetype sql nnoremap <leader>mm i--<Space>------<Space>M<SPace>
autocmd filetype vim nnoremap <leader>mm i"M<Space>
autocmd filetype c nnoremap <leader>mm i/* M */<ESC>hi
autocmd filetype cpp nnoremap <leader>mm i/* M */<ESC>hi
autocmd filetype python nnoremap <leader>mm i'''<CR>'''<CR>'''<ESC>kA<Space>M<Space>
autocmd filetype shell nnoremap <leader>mm i#<Space>M<Space>
autocmd filetype java nnoremap <leader>mm i/* M */<ESC>hi
autocmd filetype txt nnoremap <leader>mm i--- M ---<ESC>hhi

" -- ------
" -- ------ Add the marks on Explains
" -- ------

nnoremap <leader>am /\s\+\a<CR>i<Space>M<ESC>:nohlsearch<CR>
