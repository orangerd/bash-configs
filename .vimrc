""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" $HOME/.vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copies indentation from current line when starting a new line
set autoindent

" Make Vim behave in a more useful way (unlike the old Vi way)
set nocompatible

" Allows escape sequences (like the cursor keys) to work while in insert mode
set esckeys

" Kill buffers when they're closed
set nohidden

" Show line and column number at bottom of screen
set ruler

" Show (partial) command in status line (like number of lines selected in
" visual mode)
set showcmd

" Command-line completion in an enhanced mode
set wildmenu

" Expand tabs to spaces
set expandtab

" Bring cursor to the start of the line on some movement commands
set startofline

" Influences the way <BS>, <Del>, CTRL-W, and CTRL-U in Insert mode work:
"   indent  allow backspacing over autoindent
"   eol     allow backspacing over line breaks (join lines)
"   start   allow backspacing over the start of insert
set backspace=indent,start

" Influences the way Vim formats text:
"   t       Auto-wrap text using textwidth (doesn't apply to comments)
"   c       Auto-wrap comments using textwidth
"   r       Automatically insert the current comment leader after hitting
"           <Enter> in Insert mode
"   q       Allow formatting of comments with `gq`
"   n       Format numbered lists (numbers followed by `.`, `:`, `)`, `]`, or
"           `}`)
"   m       Breaks on a multi-byte character above 255
"   B       Don't insert a space between two multi-byte characters
"   1       Don't break a line after a one-letter word
set formatoptions=tcrqmB1

" Maximum width of text that's being inserted - the rest is chopped off onto
" the next line
set textwidth=256

" Influences when the bottom-most window will have a status line:
"   0       never
"   1       only if there are at least two windows
"   2       always
set laststatus=2

" Avoids the `Hit-Enter` prompts caused by file messages:
"   f       use `(3 of 5)` instead of `(file 3 of 5)`
"   i       use `[noeol]` instead of `[Incomplete last line]`
"   l       use `999L, 888C` instead of `999 lines, 888 characters`
"   m       use `[+]` instead of `[Modified]`
"   n       use `[New]` instead of `[New File]`
"   r       use `[RO]` instead of `[readonly]`
"   w       use `[w]` instead of `[written]` and `[a]` instead of `[appended]`
"   x       use `[dos]` instead of `[dos format]`, `[unix]` instead of `[unix
"           format]`, `[mac]` instead of `[mac format]`
"   t       truncate file message at the start if it's too long
"   T       truncate other messages in the middle if they're too long
"   o       overwrite message for writing a file with subsequent message for
"           reading a file
"   O       message for reading a file overwrites any previous message
"   I       don't give intro message when starting Vim
set shortmess=filmnrwxtToOI

" Briefly jumps to matching bracket when a bracket is inserted
set showmatch

" Do smart autoindenting when starting a new line
set smartindent

" Place all swapfiles into ~/.swapfiles
set directory=~/.vim/swapfiles

" Wrap around to previous/next lines when cursor is on first/last character in
" line on specified keys:
"   <       left on Normal or Visual mode
"   >       right on Normal or Visual mode
"   [       left on Insert or Replace mode
"   ]       right on Insert or Replace mode
set whichwrap=<,>,[,]

" Number of spaces that a <Tab> consists of
set tabstop=4

" Number of spaces to use for each step of auto-indent
set shiftwidth=4

" Comma separated list of strings that define comment lines
"   s       start of three-piece comemnt
"   m       middle of three-piece comment
"   b       blank required after section string
"   e       end of three-piece comment
"   x       allows three-piece comments to be ended by just typing the last
"           character of the end-comment string
set comments=s1:/*,mb:*,ex:*/,://,b:#

" Enables syntax highlighting
syntax on

" Filetype detection
filetype on

" Session management in Vim:
"   %       save and restore the buffer list
"   '       maximum number of previously edited files for which marks are
"           remembered
"   /       maximum number of search pattern history to save
"   :       maximum number of items in command-line history to save
"   <       maximum number of lines saved for each register
"   @       maximum number of items in input-line history to save
"   n       name of viminfo file to use
set viminfo=<50,'50,/50,:100,<50,@50,n~/.vim/.viminfo

" Strings to use in 'list' mode (shows tabs and eol as printable characters)
"   eol:c      character to show at end of each line
"   tab:xy     two characters to be used to show a tab
"   trail:c    character to show for trailing spaces
"   extends:c  character to show in last column when wrap is off
"   precedes:c character to show in first column when wrap is off
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<

" Default encoding to use inside Vim
set encoding=utf-8

" Precedes each line with line numbers
set number

" Don't let listings pause when the whole screen is filled
set nomore

" Highlights search patterns
set hlsearch

" Check for modelines at the beginning and end of file
set modeline

" Number of lines to check for set commands for text-based modes
set modelines=5

" Set the color and font to something reasonable in GVim
if has("gui_running")
	colorscheme elflord
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
    set lines=80
    set columns=200
" Set the color to something reasonable in Vim
else
	colorscheme elflord
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings for Vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maps <F8> toggle paste mode:
"   paste mode allows one to copy/paste text from window to window without the
"   text being messed up
map <F8> :set invpaste<CR>

" Maps <F9> to toggle highlighted search:
"   highlight search highlights the current search string
map <F9> :set invhlsearch<CR>

" ==============================================================================
" CWD Commands
" ==============================================================================
command CWD cd %:p:h
