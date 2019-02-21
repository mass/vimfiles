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

Plug 'ctrlpvim/ctrlp.vim',                       " Fuzzy file finder
      \ {'on', 'CtrlP'}

Plug 'octol/vim-cpp-enhanced-highlight',         " Better c++ syntax highlighting
      \ {'for': 'cpp'}

Plug 'w0rp/ale'                                  " Asynchronous linter

Plug 'scrooloose/nerdcommenter'                  " Comment better

"Plug 'tpope/vim-surround'                        " Surround text with characters
"Plug 'Raimondi/delimitMate'                      " Insert matching delimiters
"Plug 'tpope/vim-fugitive'                        " Git wrapper for vim
"Plug 'tpope/vim-repeat'                          " Use . with plugins
"Plug 'justinmk/vim-sneak'                        " Useful navigation using s{char}{char}
"Plug 'tpope/vim-unimpaired'                      " Useful pairs of mappings
"Plug 'airblade/vim-gitgutter'                    " Shows +/- next to changed lines in git repo

call plug#end()

" ==================================================================================================
" ===== General Settings ===========================================================================
" ==================================================================================================

filetype plugin indent on                        " Turns on filetype-specific plugins and indent files
syntax on                                        " Turns on syntax highlighting

set autoindent                                   " Copy indent from current line when starting a new line
set nobackup                                     " Don't backup buffers
set backspace=indent,eol,start                   " Backspace over everything
set cryptmethod=blowfish                         " Use stronger cyrpt method
set encoding=utf-8                               " Use utf-8 as character encoding
set fsync                                        " Ensure write to disk after save
set hidden                                       " Can switch buffers without saving
set history=100                                  " Keep 100 lines of history
set ignorecase                                   " Ignore case in search strings
set incsearch                                    " Show matching as search string is typed
set mouse=a                                      " Use the mouse in all modes
set ruler                                        " Show cursor position always
set scrolloff=5                                  " Don't let the cursor touch the edge of the viewport
set showcmd                                      " Display incomplete commands as they are typed
set splitbelow                                   " New windows go below the current
set splitright                                   " New windows go right of the current
set nostartofline                                " Keep cursor in the same column with certain moves
set noswapfile                                   " Don't use a swap file for buffers
set tildeop                                      " Use ~ to toggle case
set timeoutlen=1000                              " Wait 500ms for mapping delays
set ttimeoutlen=20                               " Wait 20ms for key code delays
set title                                        " Show filename title at the top
set ttyfast                                      " Optimize for faster terminal connections
set ttymouse=sgr                                 " Fix mouse interaction for larger screens
set undolevels=100                               " Maximum of 100 undo/redo changes
set novisualbell                                 " Don't use the visual bell
set nowritebackup                                " Don't backup buffer writes

" ===== Appearance =================================================================================
set background=dark                              " Use dark background
set colorcolumn=80,100,120                       " Draw reference line at columns 80, 100, 120
set cursorcolumn                                 " Draw reference line at current column
set cursorline                                   " Draw reference line at current line
set number                                       " Use line numbers
set numberwidth=5                                " Use 5 columns for line numbers
set norelativenumber                             " Disable relative numbers
set noshowmode                                   " Don't display an arbitrary --INSERT--
set showtabline=2                                " Always show tab line
set hlsearch                                     " Highlight search matches

colorscheme mass                                 " Change colorscheme. Do this before any custom changes

" ===== Keymaps ====================================================================================

" Use <space> as <leader>
nnoremap <space> <nop>
let mapleader = " "

" Quick reload of vimrc
nnoremap <silent> <leader>R :so ~/.vimrc<cr>

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

" Open CtrlP in file mode with C-p and in buffer mode with C-b
nnoremap <C-p> :CtrlP<cr>
nnoremap <C-b> :CtrlPBuffer<cr>

" ===== Indentation ================================================================================
set nocopyindent                                 " Don't use structure of current line when copying indent
set expandtab                                    " Expand tabs into spaces
set shiftwidth=2                                 " Number of spaces for each step of indent
set smartindent                                  " Indent intelligently when inserting a newline
set smarttab                                     " <Tab> in front of line inserts smart number of spaces
set softtabstop=2                                " Proper indentation in insert mode
set tabstop=2                                    " Number of spaces that a tab counts for

" ===== Folding ====================================================================================
"TODO

" ===== Misc =======================================================================================

" Highlight trailing whitespace
match ErrorMsg '\s\+\%#\@<!$'

" Strip trailing whitespace with <leader>s
nnoremap <silent> <leader>s :let _s=@/<Bar>:%s/\s\+$//e<Bar> :let @/=_s<Bar>:nohl<CR>

" Show highlight group test script
nnoremap <leader>hit :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Show currently active highlight groups
function! SynStack()
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nnoremap <leader>hi :call SynStack()<CR>

" ==================================================================================================
" ===== Plugin Settings ============================================================================
" ==================================================================================================

" ===== vim-airline ================================================================================
set laststatus=2                                 " Last window always has a status line
let g:airline_detect_paste=1                     " Show PASTE if in paste mode
let g:airline_powerline_fonts=1                  " Allow use of special symbol fonts
let g:airline_theme='ravenpower'                 " Set airline color theme
"Others: base16_chalk, base16_default

let g:airline#extensions#tabline#enabled=1       " Show vim-airline for tabs as well
let g:airline#extensions#tabline#left_sep=' '    " Use straight tabs
let g:airline#extensions#tabline#left_alt_sep='|' " Use straight tabs

let g:airline#extensions#quickfix#enabled=1      " Display proper titles for loclist
let g:airline#extensions#whitespace#enabled=1    " Detect whitespace errors

" ===== vim-gitgutter ==============================================================================
"hi clear SignColumn                              " Clear background of non-changed lines in the gutter

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
  \ 'dir': '\v[\/]\.(git)$',
  \ 'file': '\v\.(o)$',
  \ 'link': ''
  \ }

" ===== vim-cpp-enhanced-highlight =================================================================
let g:cpp_class_scope_highlight = 1              " Highlight class scopes
let g:cpp_experimental_template_highlight = 1    " Highlight template functions

" ===== ale ====================== =================================================================
let g:ale_echo_msg_format='(%linter%)[%severity%]: %s' " Format of echo (bottom) message
let g:ale_echo_msg_error_str='ERROR'             " Message shown for errors
let g:ale_echo_msg_warning_str='WARN'            " Message shown for warnings

"let g:ale_open_list=1                            " Automatically open the loclist if errors found

let g:ale_lint_on_save=1                         " Run the linters on save always
"let g:ale_linters = {'cpp': 'all'}               " Set the linters to use for various filetypes
let g:ale_linters = {'cpp': ['cppcheck']}        " Set the linters to use for various filetypes
let g:ale_cpp_gcc_options='-std=c++11 -Wall'     " Change options sent to gcc for c++ files
let g:ale_cpp_cppcheck_options='--enable=style'  " Change options sent to gcc for c++ files
