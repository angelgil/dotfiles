" Make Vim more useful
set nocompatible

" Use the Desert theme
set background=dark
colorscheme desert

" Automatically read file when editted outside of vim
set autoread

" Use the OS clipboard by default
if exists("+clipboard")
    set clipboard=unnamed
endif

" Enhance command-line completion
if exists("+wildmenu")
    set wildmenu
endif

" Allow cursor keys in insert mode
set esckeys

" Allow backspace in insert mode
set backspace=indent,eol,start

" UTF-8 encoding
set termencoding=utf-8
set encoding=utf-8

" Optimize for fast terminal connections
set ttyfast

" Respect modeline in files
set modeline
set modelines=4

" Disable load per-directory configuration files
set noexrc

" Enable line numbers
set number

" Enable syntax highlighting
if exists("+syntax")
    syntax on
endif

" Make tabs as wide as four spaces
set tabstop=4
" 4 spaces for autoindenting
set shiftwidth=4
" When <BS>, pretend a tab is removed even if spaces
set softtabstop=4
" Expand tabs to spaces
set expandtab

" Use line wrapping
set wrap

" Highlight searches
if exists("+hlsearch")
    set hlsearch
endif
" Highlight dynamically as pattern is typed
if exists("+incsearch")
    set incsearch
endif
" Ignore case when searching
set ignorecase
" Ignore case if search string is all lower case, case-sensitive otherwise
set smartcase

" Copy indent from current line when starting a new line
set autoindent

" Does the right indentation (mostly) in programs
if exists("+smartindent")
    set smartindent
endif

" Always show status line
set laststatus=2

" Enable mouse in all modes
if exists("+mouse")
    set mouse=a
endif

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Show the cursor position
if exists("+ruler")
    set ruler
endif

" Show the current mode
set showmode

" Show the (partial) command as it’s being typed
if exists("+showcmd")
    set showcmd
endif

" Start scrolling three lines after/before the horizontal window border
set scrolloff=3

" Show the filename in the window titlebar
if exists("+title")
    set title
endif

" Show the (partial) command as it’s being typed
set showcmd

" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif

" Centralize backups, swapfiles and undo history
set nobackup
if exists("+writebackup")
    set writebackup
endif
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("+undodir")
    set undodir=~/.vim/undo
endif
