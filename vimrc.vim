" ==================================================================================================
" File: vimrc.vim
" Author: Andrew Mass <amass1212@gmail.com>
" Created: 2015-03-22
"
" Inspired by:
"   -https://github.com/avp/vimfiles
"   -https://github.com/jez/vim-as-an-ide
" ==================================================================================================

set nocompatible                  " Modern vim mode

" ===== Neobundle ==================================================================================
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Raimondi/delimitMate'  " Insert matching delimiters
NeoBundle 'scrooloose/nerdtree'   " Directory navigation sidebar
NeoBundle 'scrooloose/syntastic'  " Error checking for many languages
NeoBundle 'bling/vim-airline'     " Better looking statusline
NeoBundle 'tpope/vim-fugitive'    " Git wrapper for vim
NeoBundle 'airblade/vim-gitgutter' " Shows +/- next to changed lines in git repo
NeoBundle 'jistr/vim-nerdtree-tabs' " Better tab support for NERDTree
NeoBundle 'tpope/vim-repeat'      " Use . with plugins
NeoBundle 'tpope/vim-unimpaired'  " Useful pairs of mappings

call neobundle#end()
NeoBundleCheck

" ===== General Settings ===========================================================================

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
set splitbelow                    " New windows go below the current
set splitright                    " New windows go right of the current
set noswapfile                    " Don't use a swap file for buffers
set tildeop                       " Use ~ to toggle case
set timeoutlen=1000               " Wait 500ms for mapping delays
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
set number                        " Use line numbers
set numberwidth=5                 " Use 5 columns for line numbers
set norelativenumber              " Disable relative numbers
set showtabline=2                 " Always show tab line

colorscheme elflord               " Change colorscheme. Do this before any custom changes

hi ColorColumn ctermbg=3          " Gold
hi CursorColumn ctermbg=0         " Dark grey
hi CursorLine cterm=bold ctermbg=0 " Dark grey, bold

" ===== Keymaps ====================================================================================
nnoremap <silent> <leader>R :so ~/.vimrc<cr> " Quick reload of vimrc
nnoremap Y y$                     " More logical mapping for Y
nnoremap <silent> <right> :bn<cr> " Remap right to switch between buffers
nnoremap <silent> <left> :bp<cr>  " Remap left to switch between buffers
nnoremap <silent> <leader>n :nohlsearch<cr> " Use <leader>n to clear highlighting from a search

nnoremap <C-h> <C-w>h             " Move one window to the left
nnoremap <C-j> <C-w>j             " Move one window down
nnoremap <C-k> <C-w>k             " Move one window up
nnoremap <C-l> <C-w>l             " Move one window to the right

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

" ===== Trailing Whitespace ========================================================================
match ErrorMsg '\s\+\%#\@<!$'      " Highlight trailing whitespace
nnoremap <silent> <leader>s :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
        " Strip trailing whitespace with <leader>s
autocmd FileType c,cpp,java,tex autocmd BufWritePre * :%s/\s\+$//e " Del trailing whitespace on save

" ===== Plugin Settings ============================================================================

" ===== NERDTree ===================================================================================
nmap <silent> <leader>t :NERDTreeTabsToggle<CR> " Open/close NERDTree with \t

" ===== Syntastic ==================================================================================
let g:syntastic_error_symbol='✘'   " Symbol for errors
let g:syntastic_warning_symbol="▲" " Symbol for warnings

"let g:syntastic_cpp_include_dirs = ['../include', 'include', '../common']
"let g:syntastic_python_checkers = []
"let g:syntastic_tex_chktex_args = '-n29'

" ===== vim-airline ================================================================================
set laststatus=2                  " Last window always has a status line
let g:airline_detect_paste=1      " Show PASTE if in paste mode
let g:airline_powerline_fonts=1   " Allow use of special symbol fonts
let g:airline_theme='ubaryd'      " Set airline color theme

let g:airline#extensions#hunks#enabled=1 " Show git info
let g:airline#extensions#hunks#non_zero_only=0 " Always show git info
let g:airline#extensions#tabline#enabled=1 " Show vim-airline for tabs as well
let g:airline#extensions#tabline#left_sep=' ' " Use straight tabs
let g:airline#extensions#tabline#left_alt_sep='|' " Use straight tabs

" ===== vim-gitgutter ==============================================================================
hi clear SignColumn                " Clear background of non-changed lines in the gutter

