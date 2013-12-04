set nocompatible		" be iMproved
filetype off			" required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" File System Navigation
				" Fuzzy file finder
Bundle 'kien/ctrlp.vim'
				" Directory tree viewer
Bundle 'scrooloose/nerdtree'
" Editor Utilities
				" Allows you to change surrounding characters and tags
Bundle 'tpope/vim-surround'
				" Smarter undo
Bundle 'sjl/gundo.vim'
" Color Schemes
Bundle 'Wombat'
Bundle 'vim-scripts/wombat256.vim'
" Snippet Support
				" Provides tab completion snippet support
Bundle 'garbas/vim-snipmate'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
				" Bunch of snippets for various languages
Bundle 'honza/vim-snippets'
" Productivity
				" Indexes files for todo and fixme notes
Bundle 'TaskList.vim'
" IDE Features
				" Does syntax checking for many languages
Bundle 'scrooloose/syntastic'
				" Does tab completion for code
Bundle 'ervandew/supertab'
" Version Control
				" Git repository wrapper
Bundle 'tpope/vim-fugitive'
" Python Specific
				" Manages python virtualenv from within vim
Bundle 'jmcantrell/vim-virtualenv'
				" Validates python code against the pep8 style guide
Bundle 'pep8'
				" Links to python documentation for highlighted word
Bundle 'fs111/pydoc.vim'
" HTML/CSS Specific
				" Zen-coding style completion 
Bundle 'mattn/emmet-vim' 


 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed.
 "

filetype plugin indent on     	" Detect filetype for plugins and indents

set hidden						" Hide buffers instead of closing them
syntax on						" Turn on syntax highlighting
set number						" Turn on line numbers
set tabstop=4					" Set tabs to be 4 spaces
set shiftwidth=4				" Shift 4 spaces when indenting
set shiftround					" Round to shifwidth when indenting
set autoindent					" Turn on autoindenting
set copyindent					" Copy the previous indent for autoindenting
set smarttab 					" Insert tab at start of line to shiftwidth
set backspace=indent,eol,start 	" Allow backspacing for everything in insert
set nowrap 						" Turn off line wrapping
set textwidth=0 				" Don't break long lines

set showmatch 					" Show the matching parenthesis when selected
set ignorecase 					" Ignore case when searching
set smartcase 					" If term is not lower-case be case-sensitive
set hlsearch 					" Highlight search terms
set incsearch 					" Show matches as you type search term

" Code folding
augroup vimrc
	au BufReadPre * setlocal foldmethod=indent
	au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
set foldlevel=99

set history=1000 				" Remember lots of commands and search history
set undolevels=1000 			" Undo as much as you want
set wildignore=*.swp,*.bak,*.pyc,*.class 	"Ignore those extensions when searching files



" INTERFACE
"--------------------------------
set title 						" Change terminal's title to file name

" Turn off beeps
set noerrorbells visualbell t_vb=
if has('autocmd')
	autocmd GUIEnter * set visualbell t_vb=
endif	


" Status Line
set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [Line=%l/%L(%p%%)]\ [Col=%c]
set ruler

" Default Directory
cd ~/projects/

colorscheme wombat

" MAPPINGS
"-----------------------------------
" Change <leader>
let mapleader=","

" Plugin Mappings
" Task list mapping
map <leader>td <Plug>TaskList 
" PEP8 mapping
let g:pep8_map='<leader>P'
" SuperTab Mapping
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
" NERD Tree
map <leader>n :NERDTreeToggle<cr>

" User Mappings 
" Clear search highlighting after hitting escape
nnoremap <esc> :noh<return><esc>
" Insert Line Mappings
" Alt-O adds a line above current one
map <M-O> m`O<ESC>``
" Alt-o adds a line below current one
map <M-o> m`o<ESC>``
" Move everything after the cursor to the next line
map <Leader>gs i<CR><ESC>
" Change pwd to directory of current file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" Edit and Source .vimrc
" Reload saved $MYVIMRC
nmap <Leader>vs :source $MYVIMRC<CR>
" Edit $MYVIMRC
nmap <Leader>ve :e $MYVIMRC<CR>

" Window navigation
map <leader>ww <c-w>w
map <leader>wn <c-w>n
map <leader>wo <c-w>o
map <leader>wv <c-w>v
map <leader>ws <c-w>s
map <leader>wc <c-w>c
map <leader>wj <c-w>j
map <leader>wk <c-w>k
map <leader>wl <c-w>l
map <leader>wh <c-w>h
map <leader>w= <c-w>=
