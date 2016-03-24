set encoding=utf8
set number
set ruler
set cursorline
set smartcase
set showcmd

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2

set lbr
set wrap
set autoread

set incsearch
set ignorecase
set smartcase
set hlsearch
set viminfo='100,<100,s50,h

execute pathogen#infect()

syntax sync minlines=256
syntax enable
set t_Co=256
set background=dark
colorscheme rgy

filetype plugin indent on

set laststatus=2
set incsearch

let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'lowc'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_by_filename = 1
let g:ctrlp_map = '<leader>o'

let mapleader = ' '

map <C-h> :bprev<CR>
map <C-l> :bnext<CR>
map <C-d> :bd<CR>

nnoremap j gj
nnoremap k gk
nnoremap <leader>n :nohlsearch<CR>
nnoremap <leader>e :!atom %<CR>
nnoremap <leader>a :!git add -p<CR>
nnoremap <leader>c :!git commit<CR>
nnoremap <leader>t :%s/\s\+$//g<CR>


au! BufRead,BufNewFile *.md set filetype=mkd

