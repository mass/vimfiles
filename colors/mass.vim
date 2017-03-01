" ==================================================================================================
" File: colors/mass.vim
" Author: Andrew Mass <amass1212@gmail.com>
" Created: 2015-07-04
"
" Inspired by:
"   -https://github.com/avp/vimfiles/colors/avp.vim
" ==================================================================================================

" Useful color help screen
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear

if exists("syntax_on")
 syntax reset
endif

let colors_name = "mass"

" General colors
hi Normal          ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi NonText         ctermfg=black       ctermbg=NONE        cterm=NONE

hi Cursor          ctermfg=black       ctermbg=white       cterm=reverse
hi LineNr          ctermfg=gray        ctermbg=NONE        cterm=NONE

hi VertSplit       ctermfg=darkgray    ctermbg=darkgray    cterm=NONE
hi StatusLine      ctermfg=white       ctermbg=darkgray    cterm=NONE
hi StatusLineNC    ctermfg=blue        ctermbg=darkgray    cterm=NONE

hi Folded          ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Title           ctermfg=NONE        ctermbg=NONE        cterm=NONE
hi Visual          ctermfg=NONE        ctermbg=NONE        cterm=REVERSE

hi SpecialKey      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi WildMenu        ctermfg=black       ctermbg=yellow      cterm=NONE
hi PmenuSbar       ctermfg=black       ctermbg=white       cterm=NONE
"hi Ignore          ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi Error           ctermfg=white       ctermbg=red         cterm=NONE
hi ErrorMsg        ctermfg=white       ctermbg=red         cterm=NONE
hi WarningMsg      ctermfg=white       ctermbg=red         cterm=NONE
hi LongLineWarning ctermfg=NONE        ctermbg=NONE        cterm=underline

if version >= 700 " Vim 7.x specific colors
 hi ColorColumn    ctermfg=NONE        ctermbg=52          cterm=NONE
 hi CursorLine     ctermfg=NONE        ctermbg=236         cterm=bold
 hi CursorColumn   ctermfg=NONE        ctermbg=236         cterm=NONE
 hi MatchParen     ctermfg=white       ctermbg=darkgray    cterm=NONE
 hi Pmenu          ctermfg=NONE        ctermbg=NONE        cterm=NONE
 hi PmenuSel       ctermfg=NONE        ctermbg=NONE        cterm=NONE
 hi Search         ctermfg=NONE        ctermbg=NONE        cterm=underline
endif

" Syntax highlighting
hi Comment         ctermfg=gray        ctermbg=NONE        cterm=NONE
hi String          ctermfg=33          ctermbg=NONE        cterm=NONE
hi Number          ctermfg=39          ctermbg=NONE        cterm=NONE

hi Keyword         ctermfg=194         ctermbg=NONE        cterm=NONE
hi PreProc         ctermfg=white       ctermbg=NONE        cterm=NONE
hi Conditional     ctermfg=194         ctermbg=NONE        cterm=NONE

hi Todo            ctermfg=black       ctermbg=yellow      cterm=bold
hi Constant        ctermfg=cyan        ctermbg=NONE        cterm=NONE

hi Identifier      ctermfg=cyan        ctermbg=NONE        cterm=NONE
hi Function        ctermfg=red         ctermbg=NONE        cterm=NONE
hi Type            ctermfg=40          ctermbg=NONE        cterm=NONE
hi Statement       ctermfg=194         ctermbg=NONE        cterm=NONE

hi Special         ctermfg=166         ctermbg=NONE        cterm=NONE
hi Delimiter       ctermfg=white       ctermbg=NONE        cterm=NONE
hi Operator        ctermfg=white       ctermbg=NONE        cterm=NONE

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

" Special for Java
hi link javaClassDecl Type
hi link javaScopeDecl Identifier
hi link javaCommentTitle javaDocSeeTag
hi link javaDocTags javaDocSeeTag
hi link javaDocParam javaDocSeeTag
hi link javaDocSeeTagParam javaDocSeeTag

hi javaDocSeeTag   ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaDocSeeTag   ctermfg=darkgray    ctermbg=NONE        cterm=NONE
hi javaClassDecl   ctermfg=white       ctermbg=NONE        cterm=NONE

" Special for XML
hi link xmlTag Keyword
hi link xmlTagName Conditional
hi link xmlEndTag Identifier

" Special for HTML
hi link htmlTag Keyword
hi link htmlTagName Conditional
hi link htmlEndTag Identifier

" Special for Javascript
hi link javaScriptNumber Number

" Special for Python
hi link pythonEscape Keyword
hi link pythonStatement Statement
