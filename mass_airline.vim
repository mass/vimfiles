" ==================================================================================================
" File: mass_airline.vim
" Author: Andrew Mass <amass1212@gmail.com>
" Created: 2019-02-21
" ==================================================================================================
" [guifg, guibg, ctermfg, ctermbg, opts]

" Define color variables
let s:YEL   = ['', '', 233, 214, '']
let s:BLUE  = ['', '', 250,  24, '']
let s:RED   = ['', '', 233, 196, '']
let s:DRED  = ['', '', 238,  52, '']
let s:GREEN = ['', '', 233,  22, '']
let s:ORG   = ['', '', 233, 130, '']
let s:LGRAY = ['', '', 233, 240, '']
let s:DGRAY = ['', '', 250, 236, '']
let s:DARK  = ['', '', 238, 234, '']
let s:HID   = ['', '', 242, 234, '']
let s:HIDI  = ['', '', 234, 242, '']

" Color palettes for different modes
let g:airline#themes#mass_airline#palette = {}
let g:airline#themes#mass_airline#palette.normal   = airline#themes#generate_color_map(s:YEL, s:LGRAY, s:DGRAY)
let g:airline#themes#mass_airline#palette.insert   = airline#themes#generate_color_map(s:BLUE, s:LGRAY, s:DGRAY)
let g:airline#themes#mass_airline#palette.replace  = airline#themes#generate_color_map(s:GREEN, s:LGRAY, s:DGRAY)
let g:airline#themes#mass_airline#palette.visual   = airline#themes#generate_color_map(s:RED, s:LGRAY, s:DGRAY)
let g:airline#themes#mass_airline#palette.inactive = airline#themes#generate_color_map(s:DARK, s:DARK, s:DARK)

" Change middle color when buffer is modified
let g:airline#themes#mass_airline#palette.normal_modified   = { 'airline_c': s:ORG }
let g:airline#themes#mass_airline#palette.insert_modified   = { 'airline_c': s:ORG }
let g:airline#themes#mass_airline#palette.replace_modified  = { 'airline_c': s:ORG }
let g:airline#themes#mass_airline#palette.visual_modified   = { 'airline_c': s:ORG }
let g:airline#themes#mass_airline#palette.inactive_modified = { 'airline_c': s:DGRAY }

" CtrlP
if get(g:, 'loaded_ctrlp', 0)
  let g:airline#themes#mass_airline#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:DGRAY, s:LGRAY, s:YEL)
endif

" Tabs
let g:airline#themes#mass_airline#palette.tabline = {
  \ 'airline_tabsel': s:YEL,
  \ 'airline_tabhid': s:HID,
  \ 'airline_tabfill': s:HID,
  \ 'airline_tabmod': s:RED,
  \ 'airline_tabmod_unsel': s:DRED,
  \ 'airline_tablabel': s:HIDI,
  \ }
