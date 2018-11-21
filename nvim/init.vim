set nocompatible

set noundofile            " disable the persistent undo function
set showmode              " show the input mode in the footer
set shortmess+=I          " don't show the vim welcome screen
set clipboard=unnamedplus " use system clipboard with * register

set autoindent            " copy indent from current line for new line
set nosmartindent         " smartindent breaks right-shifting of # lines

set hidden                " keep changed buffers without requiring saves

set ruler                 " always show the cursor position
set showcmd               " display incomplete commands
set incsearch             " do incremental searching
set hlsearch              " highlight latest search pattern
set number                " display line numbers
set numberwidth=2         " minimum number of columns to show for line numbers
set laststatus=2          " always show a status line
set visualbell t_vb=      " no beeps or flashes

set wrap                  " wrap long lines
set linebreak             " wrap at 'breakat' char vs display edge if 'wrap' on
set display=lastline      " display as much of a window's last line as possible

set splitright            " split new vertical windows right
set splitbelow            " split new horizontal windows below

set winminheight=0        " allow windows to shrink to status line
set winminwidth=0         " allow windows to shrink to vertical separator

set expandtab             " insert spaces for <Tab> press
"set smarttab              " tab respects 'shiftwidth', 'tapstop', 'softtapstop'
set tabstop=4             " set the visible width of tabs
set softtabstop=1         " edit as if tabs are 2 characters wide
set shiftwidth=4          " number of spaces to use for indent and unindent
set shiftround            " round indent to a multiple of 'shiftwidth'

set ignorecase            " ignore case for pattern matches
set smartcase             " override 'ignorecase' if pattern contains uppercase
set wrapscan              " allow searches to wrap around EOF

set cursorline            " highlight the current screen line
set nocursorcolumn        " ... or screen column ...
set colorcolumn=          " ... or margins ...

set virtualedit=block     " allow virtual editing when in visual block mode

set foldcolumn=0          " number of columns to show at left for folds
set foldnestmax=3         " only allow 3 levels of folding
set foldlevelstart=99     " start with all folds open

set whichwrap+=<,>,[,]    " allow left/right arrows to move across lines

set nomodeline            " ignore modeline
set nojoinspaces          " don't get fancy with the spaces when joining lines

set listchars=tab:\\.     " start and body of tabs
set listchars+=trail:.    " trailing spaces
set listchars+=extends:>  " last column when line extends off right
set listchars+=precedes:< " first column when line extends off left
"set listchars+=eol:$      " end of line
set list

set backspace=indent,eol,start

set noshowmatch           " don't jump to matching characters
set matchpairs=(:),[:],{:},<:>  " character pairs for use with %, 'showmatch'
set matchtime=1           " in thenths of seconds, when showmatch is on

set wildmenu              " use menu for completions
set wildmode=full

if has("mouse")
    set mouse=a
endif

if has("unix")
    set backup

    set backupdir-=.      " remove current dir from backup dir list

    set backupdir^=~/tmp,/tmp
    set directory=~/tmp//,.
endif

set updatecount=20

filetype on
filetype plugin indent on
syntax enable
set t_Co=256

let do_syntax_sel_menu=1

nnoremap Q gqap

" tab and shift + tab to changed indentation
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" move to end or start of visible lines in i mode
inoremap <C-F> <C-O><C-F>
inoremap <C-B> <C-O><C-B>

" ctrl + n to remove search highlight
nnoremap <C-N> :nohlsearch<CR><C-N>
inoremap <C-N> <Esc>:nohlsearch<CR><C-N>a
vnoremap <C-N> <Esc>:nohlsearch<CR><C-N>gv

" dot to remove empty lines from selected
xnoremap . :normal .<CR>

" ctrl + hjkl for switching windows splits
nnoremap <C-H> :wincmd h<CR>
nnoremap <C-J> :wincmd j<CR>
nnoremap <C-K> :wincmd k<CR>
nnoremap <C-L> :wincmd l<CR>

" Plug
call plug#begin()

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CtrlP
Plug 'kien/ctrlp.vim'

" base16 themes
Plug 'chriskempson/base16-vim'


" Neotex
Plug 'donRaphaco/neotex', { 'for': 'tex' }

call plug#end()

" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='base16_mocha'
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.space="\ua0"

" colorscheme
set background=dark
colorscheme base16-mocha

set termguicolors

" CtrlP
let g:ctrlp_map='<C-P>'
let g:ctrlp_cmd='CtrlP'
