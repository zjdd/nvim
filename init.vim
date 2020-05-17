let mapleader=" "

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set smartindent

set relativenumber
set cursorline
set wildmenu
set wrap
set scrolloff=5

map <silent><leader>wv :set splitright<CR>:vsplit<CR>
map <silent><leader>ws :set splitbelow<CR>:split<CR>
map <silent>H :vertical resize -5<CR>
map <silent>L :vertical resize +5<CR>
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>h <C-w>h
map <leader>l <C-w>l

map <silent><leader>n :tabe<CR>

noremap <leader>s :w!<CR>
noremap <leader>q :q<CR>

noremap <silent><leader>1 :b1<CR>
noremap <silent><leader>2 :b2<CR>
noremap <silent><leader>3 :b3<CR>
noremap <silent><leader>4 :b4<CR>
noremap <silent><leader>5 :b5<CR>
noremap <silent><leader>6 :b6<CR>

inoremap jk <ESC>

call plug#begin()
	Plug 'tomasr/molokai'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree'
	Plug 'majutsushi/tagbar'
	Plug 'skywind3000/asynctasks.vim'
	Plug 'skywind3000/asyncrun.vim'
	Plug 'skywind3000/vim-terminal-help'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

color molokai
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
set background=dark
highlight Normal guibg=NONE ctermbg=None

map <silent><leader>t :NERDTreeToggle<CR>

let g:airline_theme='molokai'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1

let g:mkdp_browser = "/usr/bin/firefox"
let g:mkdp_markdown_css=''
map <leader>mp :MarkdownPreview<CR>

nnoremap <silent><leader>lr :AsyncTask file-run<cr>
nnoremap <silent><leader>ll :AsyncTask file-build<cr>
nnoremap <silent><leader>lo :call asyncrun#quickfix_toggle(6)<cr>
let g:asynctasks_term_pos = 'tab'
let g:asynctasks_term_pos = 'right'

xmap <leader>f  <Plug>(coc-format)
nmap <leader>f  <Plug>(coc-format)
nmap <leader>rn <Plug>(coc-rename)
