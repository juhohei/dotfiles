set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=16
let g:colors_name = "rgy"

hi Cursor           ctermfg=15   ctermbg=0    cterm=NONE
hi Visual           ctermfg=0    ctermbg=15   cterm=NONE
hi CursorLine       ctermfg=NONE ctermbg=8    cterm=NONE
hi CursorColumn     ctermfg=NONE ctermbg=7    cterm=NONE
hi LineNr           ctermfg=8    ctermbg=NONE cterm=NONE
hi CursorLineNr     ctermfg=10   ctermbg=NONE cterm=NONE
hi VertSplit        ctermfg=0    ctermbg=15   cterm=NONE
hi MatchParen       ctermfg=9    ctermbg=NONE cterm=underline
hi StatusLineNC     ctermfg=9    ctermbg=8    cterm=NONE
hi Pmenu            ctermfg=NONE ctermbg=8    cterm=NONE
hi PmenuSel         ctermfg=9    ctermbg=0    cterm=NONE
hi IncSearch        ctermfg=15   ctermbg=7    cterm=bold
hi Search           ctermfg=15   ctermbg=7    cterm=bold
hi Directory        ctermfg=4    ctermbg=NONE cterm=NONE
hi Folded           ctermfg=7    ctermbg=NONE cterm=NONE
hi Normal           ctermfg=15   ctermbg=0    cterm=NONE
hi Boolean          ctermfg=5    ctermbg=NONE cterm=NONE
hi Character        ctermfg=3    ctermbg=NONE cterm=NONE
hi Comment          ctermfg=7    ctermbg=NONE cterm=NONE
hi Conditional      ctermfg=9    ctermbg=NONE cterm=NONE
hi Constant         ctermfg=2    ctermbg=NONE cterm=NONE
hi Define           ctermfg=5    ctermbg=NONE cterm=NONE

hi DiffAdd          ctermfg=0    ctermbg=2    cterm=NONE
hi DiffDelete       ctermfg=0    ctermbg=1    cterm=NONE
hi DiffChange       ctermfg=0    ctermbg=3   cterm=NONE
hi DiffText         ctermfg=NONE ctermbg=8    cterm=NONE
hi ErrorMsg         ctermfg=0    ctermbg=1    cterm=NONE
hi WarningMsg       ctermfg=0    ctermbg=3    cterm=NONE

hi Float            ctermfg=4    ctermbg=NONE cterm=NONE
hi Function         ctermfg=5    ctermbg=NONE cterm=NONE
hi Identifier       ctermfg=1    ctermbg=NONE cterm=NONE
hi Keyword          ctermfg=4    ctermbg=NONE cterm=NONE
hi Label            ctermfg=3    ctermbg=NONE cterm=NONE
hi NonText          ctermfg=NONE ctermbg=0    cterm=NONE
hi Number           ctermfg=4    ctermbg=NONE cterm=NONE
hi Operator         ctermfg=1    ctermbg=NONE cterm=NONE
hi PreProc          ctermfg=1    ctermbg=NONE cterm=NONE
hi Special          ctermfg=4    ctermbg=NONE cterm=NONE
"hi SpecialKey       ctermfg=59   ctermbg=237 cterm=NONE
hi Statement        ctermfg=1    ctermbg=NONE cterm=NONE
hi StorageClass     ctermfg=2    ctermbg=NONE cterm=NONE
hi String           ctermfg=3    ctermbg=NONE cterm=NONE
hi Tag              ctermfg=7    ctermbg=NONE cterm=NONE
hi Title            ctermfg=15   ctermbg=NONE cterm=NONE
hi Todo             ctermfg=15   ctermbg=NONE cterm=inverse,bold
hi Type             ctermfg=2    ctermbg=NONE cterm=NONE
hi Underlined       ctermfg=NONE ctermbg=NONE cterm=underline
hi htmlTag          ctermfg=5    ctermbg=NONE cterm=NONE
hi htmlEndTag       ctermfg=5    ctermbg=NONE cterm=NONE
hi htmlTagName      ctermfg=5    ctermbg=NONE cterm=NONE
hi htmlArg          ctermfg=3    ctermbg=NONE cterm=NONE
hi htmlSpecialChar  ctermfg=1    ctermbg=NONE cterm=NONE
hi cssColor         ctermfg=1    ctermbg=NONE cterm=NONE
hi cssPseudoClassId ctermfg=7    ctermbg=NONE cterm=NONE
hi cssClassName     ctermfg=3    ctermbg=NONE cterm=NONE

