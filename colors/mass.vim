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
hi DiffAdd         ctermfg=2           ctermbg=NONE        cterm=NONE
hi DiffChange      ctermfg=3           ctermbg=NONE        cterm=NONE
hi DiffDelete      ctermfg=1           ctermbg=NONE        cterm=NONE
hi SignColumn      ctermfg=NONE        ctermbg=NONE        cterm=NONE
"Conceal CursorIM Directory DiffText EndOfBuffer
"ErrorMsg VertSplit Folded FoldColumn IncSearch CursorLineNr
"ModeMsg MoreMsg Pmenu PmenuSel PmenuSbar PmenuThumb Question SpecialKey
"SpellBad SpellCap SpellLocal SpellRare StatusLine StatusLineNC TabLine
"TabLineFill TabLineSel Title VisualNOS WarningMsg WildMenu

" Syntax highlighting
hi Comment         ctermfg=gray        ctermbg=NONE        cterm=italic
hi Constant        ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi String          ctermfg=33          ctermbg=NONE        cterm=NONE
hi Number          ctermfg=39          ctermbg=NONE        cterm=NONE
hi Identifier      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function        ctermfg=red         ctermbg=NONE        cterm=NONE
hi Statement       ctermfg=194         ctermbg=NONE        cterm=NONE
hi Conditional     ctermfg=white       ctermbg=NONE        cterm=bold
hi Operator        ctermfg=white       ctermbg=NONE        cterm=bold
hi Keyword         ctermfg=194         ctermbg=NONE        cterm=NONE
hi Keyword         ctermfg=white       ctermbg=NONE        cterm=NONE
hi PreProc         ctermfg=white       ctermbg=NONE        cterm=NONE
hi Type            ctermfg=40          ctermbg=NONE        cterm=NONE
hi Special         ctermfg=166         ctermbg=NONE        cterm=NONE
hi Delimiter       ctermfg=white       ctermbg=NONE        cterm=NONE
hi Underlined      ctermfg=38          ctermbg=NONE        cterm=underline
hi Ignore          ctermfg=238         ctermbg=NONE        cterm=NONE
hi Error           ctermfg=white       ctermbg=red         cterm=NONE
hi Todo            ctermfg=black       ctermbg=white       cterm=bold,italic,underline
hi LongLineWarning ctermfg=NONE        ctermbg=52          cterm=underline

" Special for C
hi cFunction       ctermfg=brown       ctermbg=NONE        cterm=NONE
hi cIdentifier     ctermfg=brown       ctermbg=NONE        cterm=NONE

" ==================================================================================================
" Custom Highlight Links
" ==================================================================================================

" Syntax highlighting
hi link Character         Constant
hi link Boolean           Constant
hi link Float             Number
hi link Repeat            Statement
hi link Label             Statement
hi link Exception         Statement
hi link Include           PreProc
hi link Define            PreProc
hi link Macro             PreProc
hi link PreCondit         PreProc
hi link StorageClass      Special
hi link Structure         Type
hi link Typedef           Type
hi link SpecialChar       Special
hi link Tag               Special
hi link SpecialComment    Special
hi link Debug             Special

" CtrlP
hi link CtrlPMatch        Search
hi link CtrlPNoEntries    Error
hi link CtrlPLinePre      LineNr
hi link CtrlPPrtBase      Comment
hi link CtrlPPrtText      Normal
hi link CtrlPPrtCursor    Cursor
hi link CtrlPBufferNr     LineNr
hi link CtrlPBufferInd    LineNr
hi link CtrlPBufferHid    Normal
hi link CtrlPBufferHidMod ColorColumn
hi link CtrlPBufferVis    Normal
hi link CtrlPBufferVisMod ColorColumn
hi link CtrlPBufferCur    String
hi link CtrlPBufferCurMod Function
hi link CtrlPBufferPath   Comment
