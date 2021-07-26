" Vim color file
" Original Maintainer: Alexander Haeussler (alex.haeussler@gmail.com)
" License: Public Domain
" Last Change: 2013-07-03
" Version: 0.3

set background=dark

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "darknight256"

hi Normal		ctermfg=254		ctermbg=232		cterm=none		gui=none		guifg=#E4E4E4	guibg=#080808
hi Cursor						ctermbg=70		cterm=none		gui=none		guifg=#1C1C1C	guibg=#00AF00
hi Visual		ctermfg=234		ctermbg=68		cterm=bold		gui=bold		guifg=#1C1C1C	guibg=#5F87D7
hi VisualNOS	ctermfg=234		ctermbg=69		cterm=bold		gui=bold		guifg=#1C1C1C	guibg=#5F87FF

hi Search		ctermfg=255		ctermbg=125						gui=none		guifg=#EEEEEE	guibg=#AF005F
hi IncSearch	ctermfg=234		ctermbg=68		cterm=bold		gui=bold		guifg=#1C1C1C	guibg=#5F87D7
hi Question		ctermfg=234		ctermbg=68		cterm=bold		gui=bold		guifg=#1C1C1C	guibg=#5F87D7
hi MoreMsg		ctermfg=234		ctermbg=68		cterm=bold		gui=bold		guifg=#1C1C1C	guibg=#5F87D7
hi ModeMsg		ctermfg=255		ctermbg=125						gui=none		guifg=#EEEEEE	guibg=#AF005F
hi ErrorMsg		ctermfg=255		ctermbg=125		cterm=bold		gui=bold		guifg=#EEEEEE	guibg=#AF005F
hi Error		ctermfg=255		ctermbg=125		cterm=bold		gui=bold		guifg=#EEEEEE	guibg=#AF005F
hi WarningMsg	ctermfg=232		ctermbg=168		cterm=bold		gui=none		guifg=#121212	guibg=#D75F87
hi Folded		ctermfg=7		ctermbg=0		cterm=none		gui=none		guifg=#8787AF	guibg=#080808
hi StatusLine	ctermfg=7		ctermbg=0		cterm=none		gui=none		guifg=#C0C0C0	guibg=#121212
hi StatusLineNC	ctermfg=243		ctermbg=0		cterm=none		gui=none		guifg=#767676	guibg=#121212
hi VertSplit	ctermfg=238		ctermbg=232		cterm=none		gui=none		guifg=#444444	guibg=#080808
hi LineNr		ctermfg=243		ctermbg=0		cterm=none		gui=none		guifg=#767676	guibg=#000000
hi SpecialKey	ctermfg=237		ctermbg=232		cterm=none		gui=none		guifg=#767676	guibg=#3A3A3A
hi NonText		ctermfg=243		ctermbg=232		cterm=none		gui=none		guifg=#767676	guibg=#000000

hi ColorColumn					ctermbg=0		cterm=none		gui=none		guifg=#d0d0d0	guibg=#202020
hi CursorLine					ctermbg=236		cterm=none		gui=none		guifg=#d0d0d0	guibg=#303030
hi CursorLineNr	ctermfg=119						cterm=none		gui=none		guifg=#87FF5F
hi MatchParen	ctermfg=7		ctermbg=243		cterm=bold		gui=bold		guifg=#C0C0C0	guibg=#767676
hi Pmenu		ctermfg=7		ctermbg=233						gui=none		guifg=#C0C0C0	guibg=#121212
hi PmenuSel		ctermfg=0		ctermbg=192						gui=none		guifg=#000000	guibg=#D7FF87

hi PreProc		ctermfg=111						cterm=none		gui=none		guifg=#87AFFF
hi PreCondit	ctermfg=168						cterm=none		gui=none		guifg=#D75F87
hi Include		ctermfg=168						cterm=none		gui=none		guifg=#D75F87
hi Macro		ctermfg=111						cterm=none		gui=none		guifg=#87AFFF
hi Keyword		ctermfg=111						cterm=none		gui=none		guifg=#87AFFF
hi Statement	ctermfg=111						cterm=none		gui=none		guifg=#87AFFF
hi Constant		ctermfg=174						cterm=none		gui=none		guifg=#D78787
hi Number		ctermfg=174						cterm=none		gui=none		guifg=#D78787
hi Special		ctermfg=174						cterm=none		gui=none		guifg=#D78787
hi Function		ctermfg=113						cterm=bold		gui=bold		guifg=#87D75F
hi Identifier	ctermfg=180						cterm=none		gui=none		guifg=#D7AF87
hi Type			ctermfg=180						cterm=none		gui=none		guifg=#D7AF87
hi String		ctermfg=113						cterm=none		gui=none		guifg=#87D75F
hi Comment		ctermfg=144						cterm=none		gui=none		guifg=#AFAF87
hi Todo			ctermfg=232		ctermbg=168		cterm=bold		gui=none		guifg=#121212	guibg=#D75F87
hi Directory	ctermfg=119						cterm=bold		gui=bold		guifg=#87FF5F

hi Underlined   ctermfg=168						cterm=underline	gui=underline	guifg=#D75F87
hi Ignore       ctermfg=245										gui=none		guifg=#8A8A8A

hi DiffAdd		ctermfg=233		ctermbg=113		cterm=bold		gui=bold		guifg=#121212	guibg=#87D75F
hi DiffChange	ctermfg=233		ctermbg=111		cterm=bold		gui=bold		guifg=#121212	guibg=#87AFFF
hi DiffDelete	ctermfg=232		ctermbg=168		cterm=bold		gui=none		guifg=#121212	guibg=#D75F87
hi DiffText		ctermfg=254		ctermbg=125		cterm=bold		gui=bold		guifg=#E4E4E4	guibg=#AF005F

hi SpellCap		ctermfg=232		ctermbg=168		cterm=bold		gui=none		guifg=#121212	guibg=#D75F87
hi SpellRare	ctermfg=233		ctermbg=174		cterm=none		gui=none		guifg=#121212	guibg=#D78787
hi SpellBad		ctermfg=255		ctermbg=125		cterm=bold		gui=bold		guifg=#EEEEEE	guibg=#AF005F
hi SpellLocal	ctermfg=233		ctermbg=113		cterm=none		gui=none		guifg=#121212	guibg=#87D75F

hi Pmenu		ctermfg=254		ctermbg=234		cterm=bold		gui=bold		guifg=#E4E4E4	guibg=#585858
hi PmenuSel		ctermfg=234		ctermbg=69		cterm=bold		gui=bold		guifg=#1C1C1C	guibg=#5F87FF
hi PmenuThumb					ctermbg=250		cterm=none		gui=none						guibg=#BCBCBC
hi PmenuSbar					ctermbg=240		cterm=none		gui=none						guibg=#585858

hi TabLine		ctermfg=243		ctermbg=234		cterm=none		gui=none		guifg=#87D75F	guibg=#121212
hi TabLineSel	ctermfg=113		ctermbg=233		cterm=none		gui=none		guifg=#87D75F	guibg=#121212
hi TabLineFill					ctermbg=234		cterm=none		gui=none						guibg=#1C1C1C
hi MatchParen	ctermfg=233		ctermbg=119		cterm=none		gui=none		guifg=#121212	guibg=#87FF5F
hi FoldColumn	ctermfg=234		ctermbg=68		cterm=none		gui=none		guifg=#1C1C1C	guibg=#5F87D7
hi SignColumn	ctermfg=234		ctermbg=0		cterm=none		gui=none		guifg=#1C1C1C	guibg=#000000

hi VertSplit	ctermfg=255						cterm=none		gui=none		guifg=#EEEEEE
hi Title		ctermfg=255						cterm=none		gui=none		guifg=#EEEEEE
hi WildMenu		ctermfg=234		ctermbg=69		cterm=bold		gui=bold		guifg=#1C1C1C	guibg=#000000
hi SignColumn	ctermfg=234		ctermbg=0		cterm=none		gui=none		guifg=#1C1C1C

hi link CursorColumn	CursorLine
hi link Conceal			FoldColumn


" HTML
hi htmlTitle  	ctermfg=7						cterm=bold		gui=bold		guifg=#C0C0C0	guibg=#202020
hi htmlString  	ctermfg=7						cterm=none		gui=none		guifg=#C0C0C0	guibg=#202020
hi link htmlH1 htmlTitle
hi link htmlH2 htmlTitle
hi link htmlH3 htmlTitle
hi link htmlH4 htmlTitle
hi link htmlH5 htmlTitle
hi link htmlH6 htmlTitle

"JavaScript
hi javaScript  	ctermfg=7		  				cterm=bold		gui=bold		guifg=#C0C0C0	guibg=#202020
hi javaScriptParens ctermfg=111	  				cterm=none		gui=none		guifg=#87AFFF


" SASS
hi sassClass  	ctermfg=111						cterm=none		gui=none		guifg=#87AFFF
hi sassId		ctermfg=113						cterm=bold		gui=bold		guifg=#87D75F

"CSS
hi cssProp		ctermfg=111		 				cterm=none		gui=none		guifg=#87AFFF
hi cssTextProp	ctermfg=111		 				cterm=none		gui=none		guifg=#87AFFF


" VIM
hi vimCommand	ctermfg=180						cterm=none		gui=none		guifg=#D7AF87
hi helpExample	ctermfg=113						cterm=none		gui=none		guifg=#87D75F
hi helpOption	ctermfg=180						cterm=none		gui=none		guifg=#D7AF87
hi helpNote		ctermfg=254						cterm=none		gui=none		guifg=#E4E4E4
hi helpVim		ctermfg=174						cterm=bold		gui=bold		guifg=#D78787
hi helpHyperTextJump	ctermfg=111				cterm=none		gui=none		guifg=#87AFFF

hi link		helpHyperTextEntry	helpHyperTextJump
hi link		vimHiLink			helpHyperTextJump
hi link		vimHiGroup			helpHyperTextJump
hi link		vimGroup			helpHyperTextJump

" BASH - highlight readline options
let readline_has_bash = 1

" SED - make tabs stand out
let highlight_sedtabs = 1

" PYTHON - highlight numbers, buitlins, exceptions and space errors
let python_highlight_all = 1

"" vim:set ts=4 sw=4 noet:
