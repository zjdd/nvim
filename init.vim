let mapleader=" "

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set smartindent

set relativenumber
set cursorline
set wildmenu
set wrap
set scrolloff=5

map <silent><leader>v :set splitright<CR>:vsplit<CR>
map <silent>J :vertical resize -5<CR>
map <silent>K :vertical resize +5<CR>
map <silent>L <C-w>+
map <silent>H <C-w>-
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>h <C-w>h
map <leader>l <C-w>l

map <leader>n :tabe<CR>

noremap <leader>s :w!<CR>
noremap <leader>q :wq<CR>
noremap < <<
noremap > >>

inoremap jk <ESC>

call plug#begin()
	Plug 'morhetz/gruvbox'
	Plug 'tomasr/molokai'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree'
	Plug 'majutsushi/tagbar'
	Plug 'iamcco/markdown-preview.nvim'
	Plug 'skywind3000/asynctasks.vim'
	Plug 'skywind3000/asyncrun.vim'
	Plug 'skywind3000/vim-terminal-help'
	Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
call plug#end()

color molokai
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
set background=dark
highlight Normal guibg=NONE ctermbg=None

map <silent><leader>f :NERDTreeToggle<CR>

let g:airline_theme='molokai'

let g:mkdp_path_to_chrome = "path/of/chrome"
let g:mkdp_markdown_css=''
map <leader>m :MarkdownPreview<CR>

nnoremap <silent><leader>lr :AsyncTask file-run<cr>
nnoremap <silent><leader>ll :AsyncTask file-build<cr>
nnoremap <silent><leader>lo :call asyncrun#quickfix_toggle(6)<cr>
let g:asynctasks_term_pos = 'tab'
