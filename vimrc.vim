" ==================================================================================================
" File: vimrc.vim
" Author: Andrew Mass <amass1212@gmail.com>
" Created: 2015-03-22
"
" Inspired by:
"   -https://github.com/avp/vimfiles
"   -https://github.com/jez/dotfiles
" ==================================================================================================

" ===== General Settings ===========================================================================
set nocompatible                  " Modern vim mode

filetype plugin indent on         " Turns on filetype-specific plugins and indent files
syntax on                         " Turns on syntax highlighting

set autoindent                    " Copy indent from current line when starting a new line
set nobackup                      " Don't backup buffers
set backspace=indent,eol,start    " Backspace over everything
set cryptmethod=blowfish          " Use stronger cyrpt method
set debug=msg                     " Show more error messages
set encoding=utf-8                " Use utf-8 as character encoding
set fsync                         " Ensure write to disk after save
set history=100                   " Keep 100 lines of history
set ignorecase                    " Ignore case in search strings
set incsearch                     " Show matching as search string is typed
set mouse=a                       " Use the mouse in all modes
set ruler                         " Show cursor position always
set scrolloff=5                   " Don't let the cursor touch the edge of the viewport
set showcmd                       " Display incomplete commands as they are typed
set noswapfile                    " Don't use a swap file for buffers
set tildeop                       " Use ~ to toggle case
set timeoutlen=500                " Wait 500ms for mapping delays
set ttimeoutlen=20                " Wait 20ms for key code delays
set title                         " Show filename title at the top
set undolevels=100                " Maximum of 100 undo/redo changes
set novisualbell                  " Don't use the visual bell
set nowritebackup                 " Don't backup buffer writes

" ===== Appearance =================================================================================
set background=dark               " Use dark background
set colorcolumn=100               " Draw reference line at column 100
set cursorcolumn                  " Draw reference line at current column
set cursorline                    " Draw reference line at current line
"set laststatus=0                  " Last window never has a status line
set number                        " Use line numbers
set numberwidth=5                 " Use 5 columns for line numbers
set norelativenumber              " Disable relative numbers
set showtabline=2                 " Always show tab line

colorscheme elflord               " Change colorscheme. Do this before any custom changes

hi ColorColumn ctermbg=3          " Gold
hi CursorColumn ctermbg=0         " Dark grey
hi CursorLine cterm=bold ctermbg=0 " Dark grey, bold

" ===== Indentation ================================================================================
set nocopyindent                  " Don't use structure of current line when copying indent
set expandtab                     " Expand tabs into spaces
set shiftwidth=2                  " Number of spaces for each step of indent
set smartindent                   " Indent intelligently when inserting a newline
set smarttab                      " <Tab> in front of line inserts smart number of spaces
set tabstop=2                     " Number of spaces that a tab counts for

" ===== Folding ====================================================================================
"set fillchars=fold:\ ,            " Get rid of obnoxious '-' characters in folds
"set foldcolumn=1                  " Display section for code folding
"set nofoldenable                  " All folds start open
"set foldlevel=0                   " Close all folds by default
"set foldmethod=indent             " Lines of equal indent form a fold
"set foldnestmax=5                 " Max number of nested folds

