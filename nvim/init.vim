set nocompatible

let mapleader=" "
let maplocalleader=" "
let g:mapleader=" "

set noundofile			" disable the persistent undo function
set showmode			" show the input mode in the footer
set shortmess+=I		" don't show the vim welcome screen
set clipboard=unnamedplus	" use system clipboard with * register

set autoindent			" copy indent from current line for new line
set nosmartindent		" smartindent breaks right-shifting of # lines

set hidden			" keep changed buffers without requiring saves

set ruler			" always show the cursor position
set showcmd			" display incomplete commands
set incsearch			" do incremental searching
set hlsearch			" highlight latest search pattern
set number			" display line numbers
" set relativenumber		" show line numbers centered around the current line
set numberwidth=2		" minimum number of columns to show for line numbers
set laststatus=2		" always show a status line
set visualbell t_vb=		" no beeps or flashes

set wrap				" wrap long lines
set linebreak			" wrap at 'breakat' char vs display edge if 'wrap' on
set display=lastline		" display as much of a window's last line as possible

set splitright			" split new vertical windows right
set splitbelow			" split new horizontal windows below

set winminheight=0		" allow windows to shrink to status line
set winminwidth=0		" allow windows to shrink to vertical separator

" set expandtab			" insert spaces for <Tab> press
" set noexpandtab		" use <Tab> for <Tab> press
set smarttab			" tab respects 'shiftwidth', 'tapstop', 'softtapstop'
set tabstop=4			" set the visible width of tabs
set softtabstop=2		" edit as if tabs are 2 characters wide
set shiftwidth=4		" number of spaces to use for indent and unindent
set shiftround			" round indent to a multiple of 'shiftwidth'

set ignorecase			" ignore case for pattern matches
set smartcase			" override 'ignorecase' if pattern contains uppercase
set wrapscan			" allow searches to wrap around EOF

"set cursorline			" highlight the current screen line
set nocursorcolumn		" ... or screen column ...
set colorcolumn=		" ... or margins ...

set virtualedit=block		" allow virtual editing when in visual block mode

set foldcolumn=0		" number of columns to show at left for folds
set foldnestmax=3		" only allow 3 levels of folding
set foldlevelstart=99		" start with all folds open

set whichwrap+=<,>,[,]		" allow left/right arrows to move across lines

set nomodeline			" ignore modeline
set nojoinspaces		" don't get fancy with the spaces when joining lines

set listchars=tab:\\.
set listchars+=trail:.
set listchars+=extends:>
set listchars+=precedes:<
" set listchars+=eol:$
set list

set backspace=indent,eol,start

set noshowmatch			" don't jump to matching characters
set matchpairs=(:),[:],{:},<:>	" character pairs for use with %
set matchtime=1			" in thenths of seconds, when showmatch is on

set wildmenu			" use menu for completions
set wildmode=full

if has("mouse")
  set mouse=a
endif

set backup

set backupdir-=.		" remove current dir from backup dir list

if has("unix")
  set backupdir^=~/tmp,/tmp
  set directory=~/tmp//,.
endif

set updatecount=20

filetype on
filetype plugin indent on
syntax enable
set t_Co=256

let do_syntax_sel_menu=1
syntax on

vnoremap <BS> d

nnoremap <FF7> gqap
inoremap <F7> <C-O>gqap
vnoremap <F7> gq

nnoremap Q gqap
xnoremap Q gq

vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

nnoremap <leader>ev :tabedit $MYVIMRC<CR>

inoremap <C-F> <C-O><C-F>
inoremap <C-B> <C-O><C-B>

nnoremap <C-L> :nohlsearch<CR><C-L>
inoremap <C-L> <Esc>:nohlsearch<CR><C-L>a
vnoremap <C-L> <Esc>:nohlsearch<CR><C-L>gv

nnoremap <leader><Tab> <Esc>:Tabularize /
nmap <leader>aa :Tabularize /\|/10<CR>
vmap <leader>aa :Tabularize /\|/10<CR>

xnoremap . :normal .<CR>

" Plug
call plug#begin()

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NeoTex
Plug 'donRaphaco/neotex', {'for': 'tex'}

" base 16
Plug 'chriskempson/base16-vim'

" haskell
Plug 'neovimhaskell/haskell-vim', { 'for': 'hs' }

" gruvbox
Plug 'morhetz/gruvbox'

call plug#end()

" Airline
let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#left_sep=' '
" let g:airline#extensions#tabline#left_alt_sep= '|'
let g:airline_powerline_fonts=1
" let g:airline_theme=''
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.space="\ua0"

" NeoTex
let g:neotex#enabled=2

" colorscheme
set background=dark
colorscheme gruvbox

" gruvbox
let g:gruvbox_contrast_dark='hard'

