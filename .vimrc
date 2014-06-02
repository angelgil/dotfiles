" Use the Desert theme
colorscheme desert

" Make Vim more useful
set nocompatible

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

" Optimize for fast terminal connections
set ttyfast

" Respect modeline in files
set modeline
set modelines=4

" Enable per-directory .vimrc files and disable unsafe commands in them
set secure
set exrc

" Enable line numbers
set number

" Enable syntax highlighting
if exists("+syntax")
	syntax on
endif

"" Highlight current line
"if exists("+cursorline")
"	set cursorline
"endif

" Make tabs as wide as four spaces
set tabstop=4

" Highlight searches
if exists("+hlsearch")
	set hlsearch
endif

" Copy indent from current line when starting a new line
set autoindent

" Highlight dynamically as pattern is typed
if exists("+incsearch")
	set incsearch
endif

" Always show status line
set laststatus=2

" Enable mouse in all modes
set mouse=a

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
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("+undodir")
	set undodir=~/.vim/undo
endif
