" Name:    Curiosity vim colorscheme
" Author:  Yue <vim@rainy.me>
" URL:     https://github.com/rainy-me/curiosity
" License: MIT
" Created: 2019 March
"
" {{{ setup
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name  = 'Curiosity'
let s:window       = ['#65737e', '243']
let s:line         = ['#343d46', '237']
let s:foreground   = ['#c5c8c6', '255']
let s:background   = ['#1f1f1f', '236']
let s:red          = ['#cc6666', '9']
let s:pink         = ['#dd63a6', '204']
let s:yellow       = ['#fde86c', '220']
let s:orange       = ['#fde86c', '215']
let s:green        = ['#9aca31', '148']
let s:blue         = ['#00bcd4', '45']
let s:purple       = ['#ae81ff', '135']
let s:lightpurple  = ['#ae81ff', '141']
let s:grey         = ['#eeeeee', '248']
let s:darkgrey     = ['#75715e', '244']
"}}}
"
"{{{ highlight function
fun <SID>h(group, fg, bg, attr)
	if !empty(a:fg)
		exec "hi " . a:group . " guifg=" . a:fg[0] . " ctermfg=" . a:fg[1]
	endif
	if !empty(a:bg)
		exec "hi " . a:group . " guibg=" . a:bg[0] . " ctermbg=" . a:bg[1]
	endif
	if !empty(a:attr)
		exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
	endif
endfun
"}}}
"Vim Highlighting
call <SID>h("Normal", s:foreground, s:background, "")
call <SID>h("LineNr", s:darkgrey, "", "")
call <SID>h("NonText", s:yellow, "", "")
call <SID>h("SpecialKey", s:darkgrey, "", "")
call <SID>h("Search", s:background, s:yellow, "")
call <SID>h("TabLine", s:window, s:foreground, "reverse")
call <SID>h("TabLineFill", s:window, s:foreground, "reverse")
call <SID>h("StatusLine", s:window, s:yellow, "reverse")
call <SID>h("StatusLineNC", s:window, s:foreground, "reverse")
call <SID>h("VertSplit", s:window, s:window, "none")
call <SID>h("Visual", "", s:yellow, "")
call <SID>h("Directory", s:blue, "", "")
call <SID>h("ModeMsg", s:green, "", "")
call <SID>h("MoreMsg", s:green, "", "")
call <SID>h("Question", s:green, "", "")
call <SID>h("WarningMsg", s:red, "", "")
call <SID>h("MatchParen", "", s:yellow, "")
call <SID>h("Folded", s:darkgrey, s:background, "")
call <SID>h("FoldColumn", "", s:background, "")
call <SID>h("CursorLine", "", s:line, "none")
call <SID>h("CursorColumn", "", s:line, "none")
call <SID>h("PMenu", s:foreground, s:yellow, "none")
call <SID>h("PMenuSel", s:foreground, s:yellow, "reverse")
call <SID>h("SignColumn", "", s:background, "none")
call <SID>h("ColorColumn", "", s:line, "none")

" Standard Highlighting

call <SID>h("Keyword", s:pink, "", "")
call <SID>h("Statement", s:foreground, "", "")
call <SID>h("Function", s:yellow, "", "")
call <SID>h("Boolean", s:purple, "", "")
call <SID>h("Number", s:purple, "", "")
call <SID>h("Character", s:green, "", "")
call <SID>h("String", s:green, "", "")
call <SID>h("Comment", s:darkgrey, "", "")
call <SID>h("Identifier", s:red, "", "none")
call <SID>h("Conditional", s:foreground, "", "")
call <SID>h("Repeat", s:foreground, "", "")
call <SID>h("Constant", s:grey, "", "")
call <SID>h("Special", s:foreground, "", "")
call <SID>h("PreProc", s:purple, "", "")
call <SID>h("Operator", s:red, "", "none")
call <SID>h("Structure", s:blue, "", "")
call <SID>h("Type", s:blue, "", "none")
call <SID>h("Typedef", s:blue, "", "none")
call <SID>h("Define", s:pink, "", "none")
call <SID>h("Include", s:pink, "", "")
call <SID>h("Todo", s:darkgrey, s:blue, "")

call <sid>h('htmlTag', s:blue, '', '')
call <sid>h('htmlEndTag', s:blue, '', '')
call <sid>h('htmlArg', s:yellow, '', '')
call <sid>h('htmlTagName', s:pink, '', '')

" js

call <sid>h('jsStorageClass', s:pink, '', '')
call <sid>h('jsGlobalObjects', s:blue, '', '')
call <sid>h('jsArrowFunction', s:pink, '', '')
call <sid>h('jsOperatorKeyword', s:pink, '', '')
call <sid>h('jsSpreadOperator', s:pink, '', '')
call <sid>h('jsOperator', s:pink, '', '')
call <sid>h('jsFuncArgs', s:orange, '', '')
call <sid>h('jsParen', s:orange, '', '')

" ts 

call <sid>h('typescriptFuncKeyword', s:pink, '', '')
call <sid>h('typescriptLabel', s:pink, '', '')
call <sid>h('typescriptStorageClass', s:pink, '', '')
call <sid>h('foldBraces', s:pink, '', '')
call <sid>h('typescriptOperator', s:pink, '', '')
call <sid>h('typescriptLogicSymbols', s:pink, '', '')
call <sid>h('typescriptParens', s:grey, '', '')
call <sid>h('typescriptOpSymbols', s:pink, '', '')
call <sid>h('typescriptIdentifier', s:orange, '', '')

" scss

call <sid>h('scssSelectorName', s:foreground, '', '')
call <sid>h('scssProperty', s:lightpurple, '', '')
call <sid>h('scssAttribute', s:blue, '', '')
