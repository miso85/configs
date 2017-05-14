set nocompatible

set encoding=utf-8

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Add all plugins below here
Bundle 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'

" All plugins must be added before the following line
call vundle#end()

filetype plugin indent on

" Enable color scheme
syntax on

" Open all files in the same window (change if need to open files in tabs or split screen)
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

set autoindent

" Display current cursor position on last line
set ruler

" Always display the status line
set laststatus=2

" Display line numbers
set number

" Indentation rules (set tab to 4 spaces)
set shiftwidth=4
set tabstop=4
set expandtab

" Map Y to yank until EOL
map Y y$

set path+=**

" moving between split screens
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding (default keys for folding za, map to <space>)
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Auto-indent for python files
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Flag unnecessary whitespace
highlight BadWhitespace ctermbg=darkred guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.js match BadWhitespace /\s\+$/

" System clipboard (on Mac) - allow vim to use system clipboard
set clipboard=unnamed

" Map NERDTree to Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" Ignore .pyc files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
