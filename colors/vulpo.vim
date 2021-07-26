" Name: vulpo
" Description: dark, naturalistic, retro colorscheme
" Author: Nova Senco <novasenco at protonmail dot ch>
" Last Change: 23 October 2020
" URL: https://github.com/novasenco/vulpo
" Type: dark

highlight clear
if exists('syntax_on')
  syntax reset
endif
let colors_name = 'vulpo'
if &background isnot 'dark'
  set background=dark
endif

if has('gui_running') || has('termguicolors') && &termguicolors
  let g:terminal_ansi_colors = ['#444444', '#d75f5f', '#5f875f', '#d7875f', '#5f8787', '#875f5f', '#87875f', '#d7d7af', '#626262', '#ff5f5f', '#87af5f', '#d7af87', '#87afaf', '#af87d7', '#5faf87', '#c6c6c6']
endif

highlight! link Function Identifier
highlight! link PreProc Identifier
highlight! link Special Identifier
highlight! link Type Identifier
highlight! link HtmlBold Bold
highlight! link HtmlItalic Italic
highlight! link HtmlUnderline Underlined
highlight! link Terminal Normal
highlight! link StatusLineTerm StatusLine
highlight! link StatusLineTermNC StatusLineNC
highlight! link Folded NonText
highlight! link MoreMsg ModeMsg
highlight! link Question ModeMsg
highlight! link SpellCap SpellBad
highlight! link SpellLocal SpellBad
highlight! link SpellRare SpellBad
" filetype modifications
if get(g:, 'vulpo_ft_mods', 1)
  " c
  highlight! link cStorageClass Statement
  highlight! link cEnum Statement
  highlight! link cTypedef Statement
  highlight! link cMacroName Identifier
  highlight! link cDataStructureKeyword Identifier
  " vim
  highlight! link vimHiAttrib Constant
  highlight! link vimCommentTitle Title
endif

" automatically downgrade if &t_Co is smaller than 256
if (exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2) < 256
  highlight Normal cterm=NONE ctermfg=7 ctermbg=NONE gui=NONE guifg=#d7d7af guibg=#1c1c1c
  highlight Constant cterm=NONE ctermfg=1 ctermbg=NONE gui=NONE guifg=#d75f5f guibg=NONE
  highlight String cterm=NONE ctermfg=2 ctermbg=NONE gui=NONE guifg=#5f875f guibg=NONE
  highlight Identifier cterm=NONE ctermfg=11 ctermbg=NONE gui=NONE guifg=#d7af87 guibg=NONE
  highlight Statement cterm=NONE ctermfg=3 ctermbg=NONE gui=NONE guifg=#d7875f guibg=NONE
  highlight Comment cterm=italic ctermfg=8 ctermbg=NONE gui=italic guifg=#626262 guibg=NONE
  highlight Ignore cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#626262 guibg=NONE
  highlight Bold cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
  highlight Italic cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=NONE guibg=NONE
  highlight Underlined cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
  highlight Tag cterm=underline ctermfg=3 ctermbg=NONE gui=underline guifg=#d7875f guibg=NONE
  highlight Error cterm=bold,reverse ctermfg=1 ctermbg=NONE gui=bold,reverse guifg=#d75f5f guibg=NONE
  highlight Todo cterm=bold,reverse ctermfg=2 ctermbg=NONE gui=bold,reverse guifg=#5f875f guibg=NONE
  highlight StatusLine cterm=NONE ctermfg=15 ctermbg=0 gui=NONE guifg=#c6c6c6 guibg=#444444
  highlight StatusLineNC cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#303030
  highlight TabLine cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#444444
  highlight TabLineFill cterm=NONE ctermfg=2 ctermbg=none gui=NONE guifg=#5f875f guibg=#121212
  highlight TabLineSel cterm=bold ctermfg=11 ctermbg=8 gui=bold guifg=#d7af87 guibg=#626262
  highlight Pmenu cterm=NONE ctermfg=3 ctermbg=0 gui=NONE guifg=#d7875f guibg=#444444
  highlight PmenuSel cterm=NONE ctermfg=11 ctermbg=8 gui=NONE guifg=#d7af87 guibg=#626262
  highlight PmenuSbar cterm=reverse ctermfg=0 ctermbg=NONE gui=reverse guifg=#444444 guibg=NONE
  highlight PmenuThumb cterm=reverse ctermfg=2 ctermbg=NONE gui=reverse guifg=#5f875f guibg=NONE
  highlight WildMenu cterm=bold,reverse ctermfg=3 ctermbg=NONE gui=bold,reverse guifg=#d7875f guibg=NONE
  highlight Title cterm=italic,bold ctermfg=4 ctermbg=NONE gui=italic,bold guifg=#5f8787 guibg=NONE
  highlight SpecialKey cterm=NONE ctermfg=8 ctermbg=NONE gui=NONE guifg=#626262 guibg=NONE
  highlight NonText cterm=italic ctermfg=4 ctermbg=none gui=italic guifg=#5f8787 guibg=#121212
  highlight EndOfBuffer cterm=NONE ctermfg=4 ctermbg=none gui=NONE guifg=#5f8787 guibg=#080808
  highlight Search cterm=bold,reverse ctermfg=3 ctermbg=NONE gui=bold,reverse guifg=#d7875f guibg=NONE
  highlight IncSearch cterm=bold,reverse ctermfg=11 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
  highlight QuickFixLine cterm=bold ctermfg=NONE ctermbg=0 gui=bold guifg=NONE guibg=#303030
  highlight Conceal cterm=NONE ctermfg=5 ctermbg=NONE gui=NONE guifg=#875f5f guibg=NONE
  highlight Cursor cterm=reverse ctermfg=15 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
  highlight lCursor cterm=reverse ctermfg=15 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
  highlight CursorIM cterm=reverse ctermfg=15 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
  highlight Directory cterm=NONE ctermfg=12 ctermbg=NONE gui=NONE guifg=#87afaf guibg=NONE
  highlight ErrorMsg cterm=bold,reverse ctermfg=1 ctermbg=NONE gui=bold,reverse guifg=#d75f5f guibg=NONE
  highlight WarningMsg cterm=bold,reverse ctermfg=11 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
  highlight ModeMsg cterm=bold ctermfg=3 ctermbg=NONE gui=bold guifg=#d7875f guibg=NONE
  highlight SpellBad cterm=bold,reverse ctermfg=1 ctermbg=NONE gui=bold,reverse guifg=#d75f5f guibg=NONE
  highlight DiffAdd cterm=bold,reverse ctermfg=2 ctermbg=NONE gui=bold,reverse guifg=#5f875f guibg=NONE
  highlight DiffDelete cterm=NONE ctermfg=5 ctermbg=5 gui=NONE guifg=#875f5f guibg=#875f5f
  highlight DiffChange cterm=reverse ctermfg=6 ctermbg=NONE gui=reverse guifg=#87875f guibg=NONE
  highlight DiffText cterm=bold,reverse ctermfg=11 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
  highlight DiffAdded cterm=bold ctermfg=2 ctermbg=0 gui=bold guifg=#5f875f guibg=#303030
  highlight DiffRemoved cterm=bold ctermfg=1 ctermbg=0 gui=bold guifg=#d75f5f guibg=#303030
  highlight ColorColumn cterm=NONE ctermfg=NONE ctermbg=0 gui=NONE guifg=NONE guibg=#262626
  highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=0 gui=NONE guifg=NONE guibg=#262626
  highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=0 gui=NONE guifg=NONE guibg=#262626
  highlight Visual cterm=NONE ctermfg=6 ctermbg=0 gui=NONE guifg=#87875f guibg=#303030
  highlight VisualNOS cterm=NONE ctermfg=6 ctermbg=0 gui=NONE guifg=#87875f guibg=#303030
  highlight VertSplit cterm=NONE ctermfg=4 ctermbg=NONE gui=NONE guifg=#5f8787 guibg=NONE
  highlight LineNr cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#303030
  highlight CursorLineNr cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#d75f5f guibg=#303030
  highlight LineNrAbove cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#303030
  highlight LineNrBelow cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#303030
  highlight FoldColumn cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#d75f5f guibg=#303030
  highlight SignColumn cterm=NONE ctermfg=11 ctermbg=0 gui=NONE guifg=#d7af87 guibg=#303030
  highlight MatchParen cterm=bold,reverse ctermfg=3 ctermbg=NONE gui=bold,reverse guifg=#d7875f guibg=NONE
  finish
endif

highlight Normal cterm=NONE ctermfg=187 ctermbg=234 gui=NONE guifg=#d7d7af guibg=#1c1c1c

" |group-name|

highlight Constant cterm=NONE ctermfg=167 ctermbg=NONE gui=NONE guifg=#d75f5f guibg=NONE
highlight String cterm=NONE ctermfg=65 ctermbg=NONE gui=NONE guifg=#5f875f guibg=NONE
highlight Identifier cterm=NONE ctermfg=180 ctermbg=NONE gui=NONE guifg=#d7af87 guibg=NONE
highlight Statement cterm=NONE ctermfg=173 ctermbg=NONE gui=NONE guifg=#d7875f guibg=NONE

highlight Comment cterm=italic ctermfg=241 ctermbg=NONE gui=italic guifg=#626262 guibg=NONE
highlight Ignore cterm=NONE ctermfg=241 ctermbg=NONE gui=NONE guifg=#626262 guibg=NONE

highlight Bold cterm=bold ctermfg=NONE ctermbg=NONE gui=bold guifg=NONE guibg=NONE
highlight Italic cterm=italic ctermfg=NONE ctermbg=NONE gui=italic guifg=NONE guibg=NONE
highlight Underlined cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
highlight Tag cterm=underline ctermfg=173 ctermbg=NONE gui=underline guifg=#d7875f guibg=NONE

highlight Error cterm=bold,reverse ctermfg=167 ctermbg=NONE gui=bold,reverse guifg=#d75f5f guibg=NONE
highlight Todo cterm=bold,reverse ctermfg=65 ctermbg=NONE gui=bold,reverse guifg=#5f875f guibg=NONE

" |highlight-groups|

highlight StatusLine cterm=NONE ctermfg=251 ctermbg=238 gui=NONE guifg=#c6c6c6 guibg=#444444
highlight StatusLineNC cterm=NONE ctermfg=180 ctermbg=236 gui=NONE guifg=#d7af87 guibg=#303030

highlight TabLine cterm=NONE ctermfg=180 ctermbg=238 gui=NONE guifg=#d7af87 guibg=#444444
highlight TabLineFill cterm=NONE ctermfg=65 ctermbg=233 gui=NONE guifg=#5f875f guibg=#121212
highlight TabLineSel cterm=bold ctermfg=180 ctermbg=241 gui=bold guifg=#d7af87 guibg=#626262

highlight Pmenu cterm=NONE ctermfg=173 ctermbg=238 gui=NONE guifg=#d7875f guibg=#444444
highlight PmenuSel cterm=NONE ctermfg=180 ctermbg=241 gui=NONE guifg=#d7af87 guibg=#626262
highlight PmenuSbar cterm=reverse ctermfg=238 ctermbg=NONE gui=reverse guifg=#444444 guibg=NONE
highlight PmenuThumb cterm=reverse ctermfg=65 ctermbg=NONE gui=reverse guifg=#5f875f guibg=NONE

highlight WildMenu cterm=bold,reverse ctermfg=173 ctermbg=NONE gui=bold,reverse guifg=#d7875f guibg=NONE

highlight Title cterm=italic,bold ctermfg=66 ctermbg=NONE gui=italic,bold guifg=#5f8787 guibg=NONE
highlight SpecialKey cterm=NONE ctermfg=241 ctermbg=NONE gui=NONE guifg=#626262 guibg=NONE

highlight NonText cterm=italic ctermfg=66 ctermbg=233 gui=italic guifg=#5f8787 guibg=#121212

highlight EndOfBuffer cterm=NONE ctermfg=66 ctermbg=232 gui=NONE guifg=#5f8787 guibg=#080808

highlight Search cterm=bold,reverse ctermfg=173 ctermbg=NONE gui=bold,reverse guifg=#d7875f guibg=NONE
highlight IncSearch cterm=bold,reverse ctermfg=180 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE
highlight QuickFixLine cterm=bold ctermfg=NONE ctermbg=236 gui=bold guifg=NONE guibg=#303030

highlight Conceal cterm=NONE ctermfg=95 ctermbg=NONE gui=NONE guifg=#875f5f guibg=NONE
highlight Cursor cterm=reverse ctermfg=251 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
highlight lCursor cterm=reverse ctermfg=251 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE
highlight CursorIM cterm=reverse ctermfg=251 ctermbg=NONE gui=reverse guifg=#c6c6c6 guibg=NONE

highlight Directory cterm=NONE ctermfg=109 ctermbg=NONE gui=NONE guifg=#87afaf guibg=NONE

highlight ErrorMsg cterm=bold,reverse ctermfg=167 ctermbg=NONE gui=bold,reverse guifg=#d75f5f guibg=NONE
highlight WarningMsg cterm=bold,reverse ctermfg=180 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE

highlight ModeMsg cterm=bold ctermfg=173 ctermbg=NONE gui=bold guifg=#d7875f guibg=NONE

highlight SpellBad cterm=bold,reverse ctermfg=167 ctermbg=NONE gui=bold,reverse guifg=#d75f5f guibg=NONE

highlight DiffAdd cterm=bold,reverse ctermfg=65 ctermbg=NONE gui=bold,reverse guifg=#5f875f guibg=NONE
highlight DiffDelete cterm=NONE ctermfg=95 ctermbg=95 gui=NONE guifg=#875f5f guibg=#875f5f
highlight DiffChange cterm=reverse ctermfg=101 ctermbg=NONE gui=reverse guifg=#87875f guibg=NONE
highlight DiffText cterm=bold,reverse ctermfg=180 ctermbg=NONE gui=bold,reverse guifg=#d7af87 guibg=NONE

highlight DiffAdded cterm=bold ctermfg=65 ctermbg=236 gui=bold guifg=#5f875f guibg=#303030
highlight DiffRemoved cterm=bold ctermfg=167 ctermbg=236 gui=bold guifg=#d75f5f guibg=#303030

highlight ColorColumn cterm=NONE ctermfg=NONE ctermbg=235 gui=NONE guifg=NONE guibg=#262626
highlight CursorColumn cterm=NONE ctermfg=NONE ctermbg=235 gui=NONE guifg=NONE guibg=#262626
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=235 gui=NONE guifg=NONE guibg=#262626

highlight Visual cterm=NONE ctermfg=101 ctermbg=236 gui=NONE guifg=#87875f guibg=#303030
highlight VisualNOS cterm=NONE ctermfg=101 ctermbg=236 gui=NONE guifg=#87875f guibg=#303030

highlight VertSplit cterm=NONE ctermfg=66 ctermbg=NONE gui=NONE guifg=#5f8787 guibg=NONE

highlight LineNr cterm=NONE ctermfg=180 ctermbg=236 gui=NONE guifg=#d7af87 guibg=#303030
highlight CursorLineNr cterm=NONE ctermfg=167 ctermbg=236 gui=NONE guifg=#d75f5f guibg=#303030
highlight LineNrAbove cterm=NONE ctermfg=180 ctermbg=236 gui=NONE guifg=#d7af87 guibg=#303030
highlight LineNrBelow cterm=NONE ctermfg=180 ctermbg=236 gui=NONE guifg=#d7af87 guibg=#303030
highlight FoldColumn cterm=NONE ctermfg=167 ctermbg=236 gui=NONE guifg=#d75f5f guibg=#303030
highlight SignColumn cterm=NONE ctermfg=180 ctermbg=236 gui=NONE guifg=#d7af87 guibg=#303030

highlight MatchParen cterm=bold,reverse ctermfg=173 ctermbg=NONE gui=bold,reverse guifg=#d7875f guibg=NONE

