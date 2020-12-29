set nocompatible
syntax enable
colorscheme znake

"get rid of tabs, they're the devils work
set autoindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2

"set title to show in console title bar
set title
"do not keep a backup file!
set nobackup

set cindent

set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s

set nu

set ruler
set showcmd

if &term=="xterm"
	set t_co=8
	set t_sb=^[[4%dm
	set t_sf=^[[3%dm
endif

nmap <f12> :NERDTree  <cr>

" autocmd vimenter * nerdtree 
let nerdtreeshowbookmarks=1
let nerdtreechdirmode=2

nmap <f4> :tlist <cr>

let tlist_show_one_file = 1
let tlist_exit_onlywindow = 1
let tlist_use_right_window = 1

set hlsearch
set nobackup
set nowb
set noswapfile

set magic

set hid
set incsearch
set ignorecase
set smartcase

set mouse=a

source $VIMRUNTIME/mswin.vim
behave mswin

"execute pathogen#infect()

:nmap \l :setlocal number!<cr>
:nmap \o :set paste!<cr>
:nmap j gj
:nmap k gk
:nmap \q :nohlsearch<cr>
:nmap <c-e> :e#<cr>

if $term == "xterm-256color" || $term == "screen-256color" || $colorterm == "gnome-terminal"
  set t_co=256
endif

let g:vim_markdown_folding_disabled=1
set clipboard=unnamed

set listchars=tab:»■,trail:■
set list

set statusline+=%#warningmsg#
set statusline+=%{syntasticstatuslineflag()}
set statusline+=%*

"disable the arrow keys
nnoremap <left> :echoe "use h"<cr>
nnoremap <right> :echoe "use l"<cr>
nnoremap <up> :echoe "use k"<cr>
nnoremap <down> :echoe "use j"<cr>

"move between splits easily
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"use 'jk' as esc
inoremap jk <ESC>

"open new split panes to right and bottom
set splitbelow
set splitright

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['jshint']

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
" Group dependencies, vim-snippets depends on ultisnips
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

Plug 'powerline/powerline'
Plug 'plasticboy/vim-markdown'
Plug 'reedes/vim-pencil'
"Plug 'bling/vim-airline'

Plug '907th/vim-auto-save'

" Add plugins to &runtimepath
call plug#end()

let g:seoul256_background = 233
let g:seoul256_light_background = 256

colo seoul256
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
"NERDTree

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set t_co=256

let g:auto_save = 1  " enable AutoSave on Vim startup

set undodir=~/.vim/undodir
set undofile " Maintain undo history between sessions
