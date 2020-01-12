" Name:         Xcode Dark
" Description:  A Vim port of the default dark Xcode 11 colourscheme
" Author:       Aramis Razzaghipour <aramisnoah@gmail.com>
" Maintainer:   Aramis Razzaghipour <aramisnoah@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Sat 14 Dec 20:55:07 2019

" Generated by Colortemplate v2.0.0

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'xcodedark'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (((&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')) && !has('iOS')) || has('nvim')

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#33343c', '#ff8170', '#78c2b3', '#d9c97c',
        \ '#4eb0cc', '#ff7ab2', '#b281eb', '#dfdfe0', '#7f8c98', '#ff8170',
        \ '#acf2e4', '#ffa14f', '#6bdfff', '#ff7ab2', '#dabaff', '#dfdfe0']
  if has('nvim')
    let g:terminal_color_0 = '#33343c'
    let g:terminal_color_1 = '#ff8170'
    let g:terminal_color_2 = '#78c2b3'
    let g:terminal_color_3 = '#d9c97c'
    let g:terminal_color_4 = '#4eb0cc'
    let g:terminal_color_5 = '#ff7ab2'
    let g:terminal_color_6 = '#b281eb'
    let g:terminal_color_7 = '#dfdfe0'
    let g:terminal_color_8 = '#7f8c98'
    let g:terminal_color_9 = '#ff8170'
    let g:terminal_color_10 = '#acf2e4'
    let g:terminal_color_11 = '#ffa14f'
    let g:terminal_color_12 = '#6bdfff'
    let g:terminal_color_13 = '#ff7ab2'
    let g:terminal_color_14 = '#dabaff'
    let g:terminal_color_15 = '#dfdfe0'
  endif
  hi Normal guifg=#dfdfe0 guibg=#292a30 guisp=NONE gui=NONE cterm=NONE
  hi Cursor guifg=#292a30 guibg=#dfdfe0 guisp=NONE gui=NONE cterm=NONE
  hi None guifg=#dfdfe0 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=#dfdfe0 guibg=#2f3037 guisp=NONE gui=NONE cterm=NONE
  hi FoldColumn guifg=#53606e guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Folded guifg=#53606e guibg=#33343c guisp=NONE gui=NONE cterm=NONE
  hi LineNr guifg=#53606e guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#dfdfe0 guibg=#1266ca guisp=NONE gui=NONE cterm=NONE
  hi SignColumn guifg=#53606e guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#292a30 guibg=#292a30 guisp=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#53606e guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#dfdfe0 guibg=#33343c guisp=NONE gui=NONE cterm=NONE
  hi PmenuSbar guifg=#33343c guibg=#33343c guisp=NONE gui=NONE cterm=NONE
  hi PmenuSel guifg=#dfdfe0 guibg=#1266ca guisp=NONE gui=NONE cterm=NONE
  hi PmenuThumb guifg=#393b44 guibg=#393b44 guisp=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#ff8170 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi ModeMsg guifg=#7f8c98 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#ff7ab2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Question guifg=#ff7ab2 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#ff8170 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#2f3037 guisp=NONE gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=#2f3037 guisp=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#2f3037 guisp=NONE gui=NONE cterm=NONE
  hi QuickFixLine guifg=#dfdfe0 guibg=#1266ca guisp=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#dfdfe0 guibg=#393b44 guisp=NONE gui=NONE cterm=NONE
  hi StatusLineNC guifg=#7f8c98 guibg=#33343c guisp=NONE gui=NONE cterm=NONE
  hi VertSplit guifg=#33343c guibg=#33343c guisp=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#dfdfe0 guibg=#1266ca guisp=NONE gui=NONE cterm=NONE
  hi IncSearch guifg=#dfdfe0 guibg=#1266ca guisp=NONE gui=NONE cterm=NONE
  hi Search guifg=#dfdfe0 guibg=#393b44 guisp=NONE gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=#393b44 guisp=NONE gui=NONE cterm=NONE
  hi DiffAdd guifg=#acf2e4 guibg=#243330 guisp=NONE gui=NONE cterm=NONE
  hi DiffChange guifg=#ffa14f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi DiffDelete guifg=#ff8170 guibg=#3b2d2b guisp=NONE gui=NONE cterm=NONE
  hi DiffText guifg=#ffa14f guibg=#382e27 guisp=NONE gui=NONE cterm=NONE
  hi Comment guifg=#7f8c98 guibg=NONE guisp=NONE gui=italic cterm=italic
  hi Constant guifg=#d9c97c guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Error guifg=#292a30 guibg=#ff8170 guisp=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#4eb0cc guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#ffa14f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Special guifg=#78c2b3 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Statement guifg=#ff7ab2 guibg=NONE guisp=NONE gui=bold cterm=bold
  hi Type guifg=#acf2e4 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Delimiter guifg=#a3b1bf guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Directory guifg=#6bdfff guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Function guifg=#dabaff guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi FunctionDef guifg=#6bdfff guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Operator guifg=#a3b1bf guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg=#a3b1bf guibg=NONE guisp=NONE gui=italic cterm=italic
  hi String guifg=#ff8170 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Title guifg=#dfdfe0 guibg=NONE guisp=NONE gui=bold cterm=bold
  hi Todo guifg=#a3b1bf guibg=NONE guisp=NONE gui=bold cterm=bold
  hi Underlined guifg=#6bdfff guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=NONE guibg=NONE guisp=#ff8170 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpellCap guifg=NONE guibg=NONE guisp=#ff8170 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpellLocal guifg=NONE guibg=NONE guisp=#ff8170 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpellRare guifg=NONE guibg=NONE guisp=#ff8170 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  if !s:italics
    hi Comment gui=NONE cterm=NONE
    hi SpecialComment gui=NONE cterm=NONE
  endif
  let g:indentLine_color_gui  = '#53606e'
  let g:indentLine_color_term = 59
  let g:limelight_conceal_guifg = '#7f8c98'
  let g:limelight_conceal_ctermfg = 245
  hi! link Terminal Normal
  hi! link TabLine StatusLineNC
  hi! link TabLineFill StatusLineNC
  hi! link TabLineSel StatusLine
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link VisualNOS Visual
  hi! link diffAdded DiffAdd
  hi! link diffBDiffer WarningMsg
  hi! link diffChanged DiffChange
  hi! link diffCommon WarningMsg
  hi! link diffDiffer WarningMsg
  hi! link diffFile Directory
  hi! link diffIdentical WarningMsg
  hi! link diffIndexLine Number
  hi! link diffIsA WarningMsg
  hi! link diffNoEOL WarningMsg
  hi! link diffOnly WarningMsg
  hi! link diffRemoved DiffDelete
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Float Number
  hi! link Conditional Statement
  hi! link Exception Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Repeat Statement
  hi! link StorageClass Statement
  hi! link Define PreProc
  hi! link Include PreProc
  hi! link Macro PreProc
  hi! link PreCondit PreProc
  hi! link Structure Type
  hi! link Debug Special
  hi! link SpecialChar Special
  hi! link Tag Special
  hi! link Typedef Identifier
  hi! link Noise Delimiter
  hi! link StringDelimiter Delimiter
  hi! link Conceal Ignore
  hi! link NonText Ignore
  hi! link SpecialKey Ignore
  hi! link Whitespace Ignore
  hi! link Searchlight IncSearch
  hi! link cssBraces Delimiter
  hi! link gitcommitOverflow Error
  hi! link gitcommitSummary Title
  hi! link helpHyperTextJump Underlined
  hi! link htmlArg Function
  hi! link htmlEndTag Delimiter
  hi! link htmlLink Underlined
  hi! link htmlSpecialTagName htmlTagName
  hi! link htmlTag Delimiter
  hi! link htmlTagName Statement
  hi! link rustDerive rustAttribute
  hi! link rustDeriveTrait rustDerive
  hi! link rustFuncName FunctionDef
  hi! link rustIdentifier Typedef
  hi! link rustModPath None
  hi! link rustSelf rustKeyword
  hi! link scssAttribute Delimiter
  hi! link vimAutoCmdSfxList Type
  hi! link vimAutoEventList Identifier
  hi! link vimCmdSep Special
  hi! link vimCommentTitle SpecialComment
  hi! link vimContinue Delimiter
  hi! link vimHighlight Statement
  hi! link vimUserFunc Function
  hi! link markdownBoldDelimiter markdownDelimiter
  hi! link markdownBoldItalicDelimiter markdownDelimiter
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownDelimiter
  hi! link markdownHeadingDelimiter markdownDelimiter
  hi! link markdownItalicDelimiter markdownDelimiter
  hi! link markdownListMarker markdownDelimiter
  hi markdownDelimiter guifg=#78c2b3 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi markdownCode guifg=#dabaff guibg=#33343c guisp=NONE gui=NONE cterm=NONE
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 256
  hi Normal ctermfg=254 ctermbg=235 cterm=NONE
  if !has('patch-8.0.0616') && !has('nvim') " Fix for Vim bug
    set background=dark
  endif
  hi Cursor ctermfg=235 ctermbg=254 cterm=NONE
  hi None ctermfg=254 ctermbg=NONE cterm=NONE
  hi CursorLineNr ctermfg=254 ctermbg=236 cterm=NONE
  hi FoldColumn ctermfg=59 ctermbg=NONE cterm=NONE
  hi Folded ctermfg=59 ctermbg=236 cterm=NONE
  hi LineNr ctermfg=59 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=254 ctermbg=26 cterm=NONE
  hi SignColumn ctermfg=59 ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=235 ctermbg=235 cterm=NONE
  hi Ignore ctermfg=59 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=254 ctermbg=236 cterm=NONE
  hi PmenuSbar ctermfg=236 ctermbg=236 cterm=NONE
  hi PmenuSel ctermfg=254 ctermbg=26 cterm=NONE
  hi PmenuThumb ctermfg=237 ctermbg=237 cterm=NONE
  hi ErrorMsg ctermfg=210 ctermbg=NONE cterm=NONE
  hi ModeMsg ctermfg=245 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=211 ctermbg=NONE cterm=NONE
  hi Question ctermfg=211 ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=210 ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
  hi QuickFixLine ctermfg=254 ctermbg=26 cterm=NONE
  hi StatusLine ctermfg=254 ctermbg=237 cterm=NONE
  hi StatusLineNC ctermfg=245 ctermbg=236 cterm=NONE
  hi VertSplit ctermfg=236 ctermbg=236 cterm=NONE
  hi WildMenu ctermfg=254 ctermbg=26 cterm=NONE
  hi IncSearch ctermfg=254 ctermbg=26 cterm=NONE
  hi Search ctermfg=254 ctermbg=237 cterm=NONE
  hi Visual ctermfg=NONE ctermbg=237 cterm=NONE
  hi DiffAdd ctermfg=159 ctermbg=236 cterm=NONE
  hi DiffChange ctermfg=215 ctermbg=NONE cterm=NONE
  hi DiffDelete ctermfg=210 ctermbg=236 cterm=NONE
  hi DiffText ctermfg=215 ctermbg=236 cterm=NONE
  hi Comment ctermfg=245 ctermbg=NONE cterm=italic
  hi Constant ctermfg=186 ctermbg=NONE cterm=NONE
  hi Error ctermfg=235 ctermbg=210 cterm=NONE
  hi Identifier ctermfg=38 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=215 ctermbg=NONE cterm=NONE
  hi Special ctermfg=73 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=211 ctermbg=NONE cterm=bold
  hi Type ctermfg=159 ctermbg=NONE cterm=NONE
  hi Delimiter ctermfg=145 ctermbg=NONE cterm=NONE
  hi Directory ctermfg=81 ctermbg=NONE cterm=NONE
  hi Function ctermfg=183 ctermbg=NONE cterm=NONE
  hi FunctionDef ctermfg=81 ctermbg=NONE cterm=NONE
  hi Operator ctermfg=145 ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=145 ctermbg=NONE cterm=italic
  hi String ctermfg=210 ctermbg=NONE cterm=NONE
  hi Title ctermfg=254 ctermbg=NONE cterm=bold
  hi Todo ctermfg=145 ctermbg=NONE cterm=bold
  hi Underlined ctermfg=81 ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpellCap ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpellLocal ctermfg=NONE ctermbg=NONE cterm=NONE
  hi SpellRare ctermfg=NONE ctermbg=NONE cterm=NONE
  if !s:italics
    hi Comment cterm=NONE
    hi SpecialComment cterm=NONE
  endif
  let g:indentLine_color_gui  = '#53606e'
  let g:indentLine_color_term = 59
  let g:limelight_conceal_guifg = '#7f8c98'
  let g:limelight_conceal_ctermfg = 245
  hi! link Terminal Normal
  hi! link TabLine StatusLineNC
  hi! link TabLineFill StatusLineNC
  hi! link TabLineSel StatusLine
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link VisualNOS Visual
  hi! link diffAdded DiffAdd
  hi! link diffBDiffer WarningMsg
  hi! link diffChanged DiffChange
  hi! link diffCommon WarningMsg
  hi! link diffDiffer WarningMsg
  hi! link diffFile Directory
  hi! link diffIdentical WarningMsg
  hi! link diffIndexLine Number
  hi! link diffIsA WarningMsg
  hi! link diffNoEOL WarningMsg
  hi! link diffOnly WarningMsg
  hi! link diffRemoved DiffDelete
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Float Number
  hi! link Conditional Statement
  hi! link Exception Statement
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Repeat Statement
  hi! link StorageClass Statement
  hi! link Define PreProc
  hi! link Include PreProc
  hi! link Macro PreProc
  hi! link PreCondit PreProc
  hi! link Structure Type
  hi! link Debug Special
  hi! link SpecialChar Special
  hi! link Tag Special
  hi! link Typedef Identifier
  hi! link Noise Delimiter
  hi! link StringDelimiter Delimiter
  hi! link Conceal Ignore
  hi! link NonText Ignore
  hi! link SpecialKey Ignore
  hi! link Whitespace Ignore
  hi! link Searchlight IncSearch
  hi! link cssBraces Delimiter
  hi! link gitcommitOverflow Error
  hi! link gitcommitSummary Title
  hi! link helpHyperTextJump Underlined
  hi! link htmlArg Function
  hi! link htmlEndTag Delimiter
  hi! link htmlLink Underlined
  hi! link htmlSpecialTagName htmlTagName
  hi! link htmlTag Delimiter
  hi! link htmlTagName Statement
  hi! link rustDerive rustAttribute
  hi! link rustDeriveTrait rustDerive
  hi! link rustFuncName FunctionDef
  hi! link rustIdentifier Typedef
  hi! link rustModPath None
  hi! link rustSelf rustKeyword
  hi! link scssAttribute Delimiter
  hi! link vimAutoCmdSfxList Type
  hi! link vimAutoEventList Identifier
  hi! link vimCmdSep Special
  hi! link vimCommentTitle SpecialComment
  hi! link vimContinue Delimiter
  hi! link vimHighlight Statement
  hi! link vimUserFunc Function
  hi! link markdownBoldDelimiter markdownDelimiter
  hi! link markdownBoldItalicDelimiter markdownDelimiter
  hi! link markdownCodeBlock markdownCode
  hi! link markdownCodeDelimiter markdownDelimiter
  hi! link markdownHeadingDelimiter markdownDelimiter
  hi! link markdownItalicDelimiter markdownDelimiter
  hi! link markdownListMarker markdownDelimiter
  hi markdownDelimiter ctermfg=73 ctermbg=NONE cterm=NONE
  hi markdownCode ctermfg=183 ctermbg=236 cterm=NONE
  unlet s:t_Co s:italics
  finish
endif

" Background: dark
" Color: base0        #292a30 ~
" Color: base1        #2f3037 ~
" Color: base2        #33343c ~
" Color: base3        #393b44 ~
" Color: base4        #53606e ~
" Color: base5        #7f8c98 ~
" Color: base6        #a3b1bf ~
" Color: base7        #dfdfe0 ~
" Color: deep_blue    #1266ca ~
" Color: green_wash   #243330 ~
" Color: orange_wash  #382e27 ~
" Color: red_wash     #3b2d2b ~
" Color: blue         #4eb0cc ~
" Color: light_blue   #6bdfff ~
" Color: orange       #ffa14f ~
" Color: pink         #ff7ab2 ~
" Color: red          #ff8170 ~
" Color: yellow       #d9c97c ~
" Color: purple       #b281eb ~
" Color: light_purple #dabaff ~
" Color: teal         #78c2b3 ~
" Color: light_teal   #acf2e4 ~
" Term colors: base2      red  teal         yellow
" Term colors: blue       pink purple       base7
" Term colors: base5      red  light_teal   orange
" Term colors: light_blue pink light_purple base7
" vim: et ts=2 sw=2