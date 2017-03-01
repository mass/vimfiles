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

" ===== vim-plug ===================================================================================
call plug#begin('~/.vim/plug')

Plug 'scrooloose/nerdtree',                      " Directory navigation sidebar
      \ {'on': 'NERDTreeToggle'}
Plug 'jistr/vim-nerdtree-tabs',                  " Better tab support for NERDTree
      \ {'on': 'NERDTreeToggle'}

Plug 'vim-airline/vim-airline'                   " Better looking statusline
Plug 'vim-airline/vim-airline-themes'            " Better looking statusline

Plug 'airblade/vim-gitgutter'                    " Shows +/- next to changed lines in git repo

Plug 'ctrlpvim/ctrlp.vim',                       " Fuzzy file finder
      \ {'on', 'asdf'}

Plug 'octol/vim-cpp-enhanced-highlight',         " Better c++ syntax highlighting
      \ {'for': 'cpp'}

Plug 'w0rp/ale'                                  " Asynchronous linter

"NeoBundle 'Raimondi/delimitMate'                 " Insert matching delimiters
"NeoBundle 'tpope/vim-fugitive'                   " Git wrapper for vim
"NeoBundle 'tpope/vim-repeat'                     " Use . with plugins
"NeoBundle 'justinmk/vim-sneak'                   " Useful navigation using s{char}{char}
"NeoBundle 'tpope/vim-unimpaired'                 " Useful pairs of mappings

call plug#end()

" ===== General Settings ===========================================================================

filetype plugin indent on                        " Turns on filetype-specific plugins and indent files
syntax on                                        " Turns on syntax highlighting

set autoindent                                   " Copy indent from current line when starting a new line
set nobackup                                     " Don't backup buffers
set backspace=indent,eol,start                   " Backspace over everything
set cryptmethod=blowfish                         " Use stronger cyrpt method
set debug=msg                                    " Show more error messages
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

let mapleader=" "                                " Use <space> as the leader

" ===== Appearance =================================================================================
set background=dark                              " Use dark background
set colorcolumn=80,100                           " Draw reference line at columns 80 and 100
set cursorcolumn                                 " Draw reference line at current column
set cursorline                                   " Draw reference line at current line
set number                                       " Use line numbers
set numberwidth=5                                " Use 5 columns for line numbers
set norelativenumber                             " Disable relative numbers
set noshowmode                                   " Don't display an arbitrary --INSERT--
set showtabline=2                                " Always show tab line

colorscheme mass                                 " Change colorscheme. Do this before any custom changes

" ===== Keymaps ====================================================================================

nnoremap <silent> <leader>R :so ~/.vimrc<cr>     " Quick reload of vimrc

nnoremap Y y$                                    " More logical mapping for Y
nnoremap <c-g> G                                 " Fix for fat-fingering c-g instead of G

nnoremap <silent> <right> :bn<cr>                " Remap right to switch between buffers
nnoremap <silent> <left> :bp<cr>                 " Remap left to switch between buffers

nnoremap <silent> <leader>n :nohlsearch<cr>      " Use <leader>n to clear highlighting from a search

nnoremap <C-h> <C-w>h                            " Move one window to the left
nnoremap <C-j> <C-w>j                            " Move one window down
nnoremap <C-k> <C-w>k                            " Move one window up
nnoremap <C-l> <C-w>l                            " Move one window to the right

" ===== Indentation ================================================================================
set nocopyindent                                 " Don't use structure of current line when copying indent
set expandtab                                    " Expand tabs into spaces
set shiftwidth=2                                 " Number of spaces for each step of indent
set smartindent                                  " Indent intelligently when inserting a newline
set smarttab                                     " <Tab> in front of line inserts smart number of spaces
set softtabstop=2                                " Proper indentation in insert mode
set tabstop=2                                    " Number of spaces that a tab counts for

" ===== Folding ====================================================================================
"set fillchars=fold:\ ,                           " Get rid of obnoxious '-' characters in folds
"set foldcolumn=1                                 " Display section for code folding
"set nofoldenable                                 " All folds start open
"set foldlevel=0                                  " Close all folds by default
"set foldmethod=indent                            " Lines of equal indent form a fold
"set foldnestmax=5                                " Max number of nested folds

" ===== Trailing Whitespace ========================================================================
match ErrorMsg '\s\+\%#\@<!$'                    " Highlight trailing whitespace

nnoremap <silent> <leader>s :let _s=@/<Bar>:%s/\s\+$//e<Bar>
      \ :let @/=_s<Bar>:nohl<CR>                 " Strip trailing whitespace with <leader>s
autocmd FileType c,cpp,java,tex
      \ autocmd BufWritePre * :%s/\s\+$//e       " Del trailing whitespace on save

" ===== Plugin Settings ============================================================================

" ===== NERDTree ===================================================================================
"TODO
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>  " Open/close NERDTree with <leader>t
let NERDTreeQuitOnOpen = 1                       " Automatically quit when opening file
let NERDTreeMinimalUI = 1                        " TODO
let NERDTreeDirArrows = 1                        " TODO
let NERDTreeShowLineNumbers = 1                  " Show line numbers in the NERDTree buffer

" ===== vim-airline ================================================================================
set laststatus=2                                 " Last window always has a status line
let g:airline_detect_paste=1                     " Show PASTE if in paste mode
let g:airline_powerline_fonts=1                  " Allow use of special symbol fonts
let g:airline_theme='ubaryd'                     " Set airline color theme

"TODO: tagbar
let g:airline#extensions#hunks#enabled=1         " Show git info
let g:airline#extensions#hunks#non_zero_only=0   " Always show git info

let g:airline#extensions#tabline#enabled=1       " Show vim-airline for tabs as well
let g:airline#extensions#tabline#left_sep=' '    " Use straight tabs
let g:airline#extensions#tabline#left_alt_sep='|' " Use straight tabs

let g:airline#extensions#quickfix#enabled=1      " Display proper titles for loclist
let g:airline#extensions#whitespace#enabled=1    " Detect whitespace errors

" ===== vim-gitgutter ==============================================================================
hi clear SignColumn                              " Clear background of non-changed lines in the gutter

" ===== ctrlp.vim==== ==============================================================================
"TODO
let g:ctrlp_map='<c-p>'                          " Remap c-p to run CtrlP plugin
let g:ctrlp_cmd='CtrlP'                          " Default command for c-p mapping

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

