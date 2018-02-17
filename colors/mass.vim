" ==================================================================================================
" File: colors/mass.vim
" Author: Andrew Mass <amass1212@gmail.com>
" Created: 2015-07-04
" ==================================================================================================

" Useful color help screen
" :he hl-{group-name}
" :he highlight-groups
" :he cterm-colors
" :he attr-list

set background=dark
hi clear

if exists("syntax_on")
 syntax reset
endif

let colors_name = "mass"

" ==================================================================================================
" Custom Highlight Settings
" ==================================================================================================

" Vim default highlight groups (as of 8.0)
hi ColorColumn     ctermfg=NONE        ctermbg=52          cterm=NONE
hi Cursor          ctermfg=233         ctermbg=178         cterm=bold
hi CursorColumn    ctermfg=NONE        ctermbg=236         cterm=NONE
hi CursorLine      ctermfg=NONE        ctermbg=236         cterm=bold
hi LineNr          ctermfg=238         ctermbg=NONE        cterm=NONE
hi MatchParen      ctermfg=233         ctermbg=white       cterm=NONE
hi NonText         ctermfg=196         ctermbg=black       cterm=bold
hi Normal          ctermfg=178         ctermbg=233         cterm=NONE
hi Search          ctermfg=NONE        ctermbg=239         cterm=bold
hi Visual          ctermfg=NONE        ctermbg=NONE        cterm=reverse
"Conceal CursorIM Directory DiffAdd DiffChange DiffDelete DiffText EndOfBuffer
"ErrorMsg VertSplit Folded FoldColumn SignColumn IncSearch CursorLineNr
"ModeMsg MoreMsg Pmenu PmenuSel PmenuSbar PmenuThumb Question SpecialKey
"SpellBad SpellCap SpellLocal SpellRare StatusLine StatusLineNC TabLine
"TabLineFill TabLineSel Title VisualNOS WarningMsg WildMenu

" ==================================================================================================
" Custom Highlight Links
" ==================================================================================================





"TODO: Reorganize below

" Syntax highlighting
hi Comment         ctermfg=gray        ctermbg=NONE        cterm=NONE
hi String          ctermfg=33          ctermbg=NONE        cterm=NONE
hi Number          ctermfg=39          ctermbg=NONE        cterm=NONE
"hi Ignore          ctermfg=NONE        ctermbg=NONE        cterm=NONE
"hi Error           ctermfg=white       ctermbg=red         cterm=NONE
"hi Keyword         ctermfg=194         ctermbg=NONE        cterm=NONE
hi PreProc         ctermfg=white       ctermbg=NONE        cterm=NONE
"hi Conditional     ctermfg=194         ctermbg=NONE        cterm=NONE
hi Todo            ctermfg=black       ctermbg=yellow      cterm=bold
hi Constant        ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Identifier      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function        ctermfg=red         ctermbg=NONE        cterm=NONE
hi Type            ctermfg=40          ctermbg=NONE        cterm=NONE
hi Statement       ctermfg=194         ctermbg=NONE        cterm=NONE
hi Special         ctermfg=166         ctermbg=NONE        cterm=NONE
hi Delimiter       ctermfg=white       ctermbg=NONE        cterm=NONE
hi Operator        ctermfg=white       ctermbg=NONE        cterm=NONE
hi LongLineWarning ctermfg=NONE        ctermbg=NONE        cterm=underline

hi link Character Constant
hi link Boolean Constant
hi link Float Number
hi link Repeat Statement
hi link Label Statement
hi link Exception Statement
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link StorageClass Special
hi link Structure Type
hi link Typedef Type
hi link Tag Special
hi link SpecialChar Special
hi link SpecialComment Special
hi link Debug Special

" Special for C
hi cFunction       ctermfg=brown       ctermbg=NONE        cterm=NONE
hi cIdentifier     ctermfg=brown       ctermbg=NONE        cterm=NONE
