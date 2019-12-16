" ==================================================================================================
" File: vimrc.vim
" Author: Andrew Mass <amass1212@gmail.com>
" Created: 2015-03-22
"
" Inspired by:
"   -https://github.com/avp/vimfiles
"   -https://github.com/jez/vim-as-an-ide
" ==================================================================================================

set nocompatible                                 " Modern vim mode

" ==================================================================================================
" ===== Plugins (vim-plug) =========================================================================
" ==================================================================================================

call plug#begin('~/.vim/plug')

Plug 'vim-airline/vim-airline'                   " Better looking statusline
Plug 'vim-airline/vim-airline-themes'            " Better looking statusline
Plug 'ctrlpvim/ctrlp.vim'                        " Fuzzy file finder
Plug 'octol/vim-cpp-enhanced-highlight',
      \ {'for': 'cpp'}                           " Better c++ syntax highlighting
Plug 'w0rp/ale'                                  " Asynchronous linter
Plug 'scrooloose/nerdcommenter'                  " Comment better
Plug 'mhinz/vim-signify'                         " See git diffs in sign column

if executable('ctags')
  Plug 'vim-scripts/taglist.vim',
       \ {'on': 'TlistToggle'}                   " Explore tags and browse source
endif

call plug#end()

" ==================================================================================================
" ===== General Settings ===========================================================================
" ==================================================================================================

filetype plugin indent on                        " Turns on filetype-specific plugins and indent files
syntax on                                        " Turns on syntax highlighting

set backspace=indent,eol,start                   " Backspace over everything
set nobackup                                     " Don't backup buffers
set belloff="all"                                " Turn off the bell
set cryptmethod=blowfish2                        " Use strongest cyrpt method
set encoding=utf-8                               " Use utf-8 as character encoding
set noesckeys                                    " Don't allow use of <ESC> as a modifier (No delay to recognize <ESC>)
set fixeol                                       " Force newlines at end of files
set fsync                                        " Ensure write to disk after save
set hidden                                       " Can switch buffers without saving
set history=100                                  " Keep N lines of history
set ignorecase                                   " Ignore case in search strings
set incsearch                                    " Show matching as search string is typed
set lazyredraw                                   " Don't redraw during macro execution
set mouse=""                                     " Don't use/capture the mouse (so text can be selected/pasted/etc.)
set mousehide                                    " Hide mouse after typing until moved
set noruler                                      " Don't show the ruler (not needed with airline)
set scrolloff=10                                 " Don't let the cursor touch the edge of the viewport
set showcmd                                      " Display incomplete commands as they are typed
set smartcase                                    " Don't ignore case when searching with capital letters
set splitbelow                                   " New windows go below the current
set splitright                                   " New windows go right of the current
set nostartofline                                " Keep cursor in the same column with certain moves
set noswapfile                                   " Don't use a swap file for buffers
set tags=./tags;/                                " Look upwards for tags file
set tildeop                                      " Use ~ to toggle case
set timeout                                      " Timeout on :mappings
set timeoutlen=500                               " Wait Nms for mapping delays
set ttimeout                                     " Timeout on key codes
set ttimeoutlen=20                               " Wait Nms for key code delays
set notitle                                      " Don't show filename title at the top
set ttyfast                                      " Optimize for faster terminal connections
set ttymouse=sgr                                 " Fix mouse interaction for larger screens
set undolevels=100                               " Maximum of N undo/redo changes
set novisualbell                                 " Don't use the visual bell
set nowritebackup                                " Don't backup buffer writes

" ===== Appearance =================================================================================
set background=dark                              " Use dark background
set colorcolumn=80,100,120                       " Draw reference line at columns 80, 100, 120
set nocursorcolumn                               " Don't draw reference line at current column (high CPU usage)
set cursorline                                   " Draw reference line at current line
set hlsearch                                     " Highlight search matches
set number                                       " Use line numbers
set numberwidth=5                                " Use 5 columns for line numbers
set norelativenumber                             " Disable relative numbers
let &showbreak="++++"                            " Visually indicate lines that have been wrapped
set noshowmode                                   " Don't display an arbitrary --INSERT--
set showtabline=2                                " Always show tab line

colorscheme mass                                 " Change colorscheme. Do this before any custom changes

" ===== Indentation ================================================================================
set autoindent                                   " Copy indent from current line when starting a new line
set nocopyindent                                 " Don't use structure of current line when copying indent
set expandtab                                    " Expand tabs into spaces
set shiftwidth=2                                 " Number of spaces for each step of indent
set smartindent                                  " Indent intelligently when inserting a newline
set smarttab                                     " <Tab> in front of line inserts smart number of spaces
set softtabstop=2                                " Proper indentation in insert mode
set tabstop=2                                    " Number of spaces that a tab counts for

" ===== Folding ====================================================================================
"TODO
set nofoldenable                                 " Disable folding

" ===== Keymaps ====================================================================================

" Use <space> as <leader>
nnoremap <space> <nop>
let mapleader = " "

" Quick reload of vimrc
nnoremap <silent> <leader>r :so ~/.vimrc<cr>

" More logical mapping for Y
nnoremap Y y$

" Fix for fat-fingering c-g instead of G
nnoremap <c-g> G

" Remap left/right to switch between buffers
nnoremap <silent> <right> :bn<cr>
nnoremap <silent> <left> :bp<cr>

" Use <leader>n to clear highlighting from a search
nnoremap <silent> <leader>n :nohlsearch<cr>

" Use // to search visually highlighted text
vnoremap // y/\V<C-R>"<CR>

" Use control-hjkl for window (split) movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Comment out word under the cursor
nmap <leader>cw viw<leader>cc

" Open CtrlP in various modes
nnoremap <C-p> :CtrlP<cr>
nnoremap <C-b> :CtrlPBuffer<cr>
nnoremap <C-t> :CtrlPTag<cr>

" Toggle PASTE mode
nnoremap <silent> <leader>p :set invpaste<cr>

" Highlight trailing whitespace
match ErrorMsg '\s\+\%#\@<!$'

" Strip trailing whitespace with <leader>w
nnoremap <silent> <leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar> :let @/=_s<Bar>:nohl<CR>

" Show highlight group test script
nnoremap <leader>ht :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Show currently active highlight groups
function! SynStack()
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap <leader>hi :call SynStack()<CR>

" Open and close loclist
nnoremap <silent> <leader>l :lopen<cr>
nnoremap <silent> <leader>; :lclose<cr>

" Jump to tag under cursor
nnoremap <silent> <leader>t <C-]>
" Jump backwards in tag stack
nnoremap <silent> <leader>s :pop<cr>
" Toggle taglist window
nnoremap <silent> <leader>i :TlistToggle<cr>

" ===== Misc =======================================================================================

" Disable trying to highlight embedded HTML in an YAML file
augroup standard
  autocmd!
  autocmd BufEnter *.yaml
        \ syntax region yamlHtmlIgnore start='<html>' end='</html>' |
        \ highlight def link yamlHtmlIgnore Normal |
        \ syntax sync fromstart
augroup END

" ==================================================================================================
" ===== Plugin Settings ============================================================================
" ==================================================================================================

" ===== vim-airline ================================================================================
set laststatus=2                                 " Last window always has a status line
let g:airline_detect_paste=1                     " Show PASTE if in paste mode
let g:airline_powerline_fonts=1                  " Allow use of special symbol fonts
let g:airline_theme='mass_airline'               " Set airline color theme
let g:airline_skip_empty_sections=1              " Dont draw separators for error sections

let g:airline#extensions#tabline#enabled=1       " Show vim-airline for tabs as well
let g:airline#extensions#tabline#left_sep=' '    " Use straight tabs
let g:airline#extensions#tabline#left_alt_sep='|' " Use straight tabs

let g:airline#extensions#keymap#enabled=0        " Dont show the current keymap
let g:airline#extensions#po#enabled=0            " Dont show translations messages
let g:airline#extensions#quickfix#enabled=1      " Display proper titles for loclist
let g:airline#extensions#whitespace#enabled=1    " Detect whitespace errors
let g:airline#extensions#ale#enabled=1           " Show ale error count

" ===== ctrlp.vim==== ==============================================================================
let g:ctrlp_map='<c-p>'                          " Remap c-p to run CtrlP plugin
let g:ctrlp_cmd='CtrlP'                          " Default command for c-p mapping
let g:ctrlp_match_window='max:20'                " More results in the window
let g:ctrlp_show_hidden=1                        " Show dotfiles
let g:ctrlp_max_depth=10                         " Limit search directory depth
let g:ctrlp_lazy_update=50                       " Wait a bit after typing to update search
let g:ctrlp_open_multiple_files=0                " Disable multi-open mode
let g:ctrlp_match_current_file=1                 " Include current file in match entires

" Ignore certain directories and file extensions
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git)$',
  \ 'file': '\v(\.o|Makefile|Makefile.Debug|Makefile.Release|\.qmake\.stash)$',
  \ 'link': ''
  \ }

" ===== vim-cpp-enhanced-highlight =================================================================
let g:cpp_class_scope_highlight = 1              " Highlight class scopes
let g:cpp_experimental_template_highlight = 1    " Highlight template functions

" ===== ale ========================================================================================
let g:ale_open_list=0                            " Don't automatically open the loclist if errors found
let g:ale_lint_on_enter=1                        " Run the linters on entering a buffer
let g:ale_lint_on_save=1                         " Run the linters on save always
let g:ale_lint_on_text_changed='never'           " Don't lint during typing
let g:ale_sign_column_always=1                   " Keep the sign column (gutter) open always
let g:ale_history_enabled=0                      " Don't remember last commands
let g:ale_echo_msg_format='(%linter%)[%severity%]: %s' " Format of echo (bottom) message
let g:ale_echo_msg_error_str='ERROR'             " Message shown for errors
let g:ale_echo_msg_warning_str='WARN'            " Message shown for warnings
let g:ale_linters = {'cpp': ['cppcheck']}        " Set the linters to use for various filetypes

let g:ale_cpp_gcc_options='-std=c++11 -Wall'     " Change options sent to gcc for c++ files
let g:ale_cpp_cppcheck_options='--enable=style'  " Change options sent to gcc for c++ files

" ===== signify ====================================================================================
let g:signify_vcs_list = [ 'git' ]               " Don't waste time trying other VCSs
let g:signify_sign_delete = ''                   " Don't use the default delete symbol

" ===== taglist ====================================================================================
let Tlist_Close_On_Select = 1                    " Close taglist window after selection
let Tlist_Display_Tag_Scope = 0                  " Don't display redundant scope
let Tlist_Enable_Fold_Column = 0                 " Don't show ugly folding column
let Tlist_Exit_OnlyWindow = 1                    " Exit vim if this is the only window left
let Tlist_WinWidth = 40                          " Wider taglist window
