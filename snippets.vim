" This file was built to file's snippets.

autocmd filetype markdown inoremap \b ****<+++><ESC>F*hi
autocmd filetype markdown inoremap \i **<+++><ESC>F*i
autocmd filetype markdown inoremap \n ---<CR><CR>
autocmd filetype markdown inoremap \s ~~~~<+++><ESC>F~hi
autocmd filetype markdown inoremap \cs ``<+++><ESC>F`i
autocmd filetype markdown inoremap \cw ```<CR><+++><CR>```<CR><+++><ESC>4kA
autocmd filetype markdown inoremap \p ![<+++>](<+++>)<+++><ESC>F[a
autocmd filetype markdown inoremap \a [<+++>](<+++>)<+++><ESC>F[a
autocmd filetype markdown inoremap \1 #<Space><CR><CR><+++><ESC>2kA
autocmd filetype markdown inoremap \2 ##<Space><CR><CR><+++><ESC>2kA
autocmd filetype markdown inoremap \3 ###<Space><CR><CR><+++><ESC>2kA
autocmd filetype markdown inoremap \4 ####<Space><CR><CR><+++><ESC>2kA
autocmd filetype markdown inoremap \l --------<CR>
