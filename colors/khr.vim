" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=2 sw=2
" Vim color file
" Maintainer:   Dmitri Khrebtukov
" Last Change:  May 2013

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "khr"

hi Comment term=bold ctermfg=Red guifg=#006611
hi Normal guifg=black guibg=gray91
hi Constant term=underline ctermfg=Green guifg=DarkMagenta
hi Special term=bold ctermfg=Magenta guifg=Purple
hi Identifier term=underline ctermfg=Blue guifg=Blue
hi Statement term=bold ctermfg=DarkRed gui=NONE guifg=Brown
hi PreProc term=underline ctermfg=Magenta guifg=DarkBlue
hi Type term=underline ctermfg=Blue gui=NONE guifg=Blue
hi Visual term=reverse ctermfg=Yellow ctermbg=Red gui=NONE guifg=Black guibg=Yellow
hi Search term=reverse ctermfg=Black ctermbg=Cyan gui=NONE guifg=Black guibg=Cyan
hi Tag term=bold ctermfg=DarkGreen guifg=OliveDrab
hi Error term=reverse ctermfg=15 ctermbg=9 guibg=Red guifg=White
hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
hi StatusLine term=bold,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=underline guifg=Yellow guibg=DarkGray
hi CursorLine term=none cterm=underline ctermfg=none ctermbg=none gui=undercurl guifg=fg guibg=#ffffaa guisp=Gray
hi CursorColumn term=none cterm=none ctermfg=none ctermbg=none gui=underline guifg=fg guibg=#dddfee guisp=#dddddd
hi TabLineSel guifg=Blue
hi Folded guibg=#dddfee guifg=darkblue
hi FoldColumn guibg=#dddfee guifg=darkblue
hi! link MoreMsg Comment
hi! link ErrorMsg Visual
hi! link WarningMsg ErrorMsg
hi! link Question Comment
hi link String  Constant
hi link Character   Constant
hi link Number  Constant
hi link Boolean Constant
hi link Float       Number
hi link Function    Identifier
hi link Conditional Statement
hi link Repeat  Statement
hi link Label       Statement
hi link Operator    Statement
hi link Keyword Statement
hi link Exception   Statement
hi link Include PreProc
hi link Define  PreProc
hi link Macro       PreProc
hi link PreCondit   PreProc
hi link StorageClass    Type
hi link Structure   Type
hi link Typedef Type
hi link SpecialChar Special
hi link Delimiter   Special
hi link SpecialComment Special
hi link Debug       Special
