"set history
set history=700

"enable filetype plugins
filetype plugin on
filetype indent on


"set autoread in case file is edited form outside
set autoread

syntax enable

"spaces and tabs

set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set lbr


"wrappings
set ai
set si
set nowrap
set sidescroll=1 listchars=extends:→,precedes:←


"UI

set ruler

set number
set cursorline
filetype indent on
set wildmenu
set lazyredraw "prevents redraw in middle of macros
set showmatch "shows matching parenthasese or bracket {

"Searching
set incsearch
set hlsearch

"Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> #
setlocal foldmethod=syntax "folds based on indent level

"Rendering
set updatetime=100

"Vim Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let NERDTreeMouseMode=3

"Mouse
set mouse=a

"Colorscheme
colorscheme gruvbox
set background=dark

"Syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Vim Package Manager
execute pathogen#infect()
filetype plugin indent on
