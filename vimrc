" Forces to use vim settings rather than vi settings
set nocompatible

" Plugins loading with pathogen
execute pathogen#infect()

" Tweak backspace behaviour
set backspace=indent,eol,start

" Enable mouse
set mouse=a

" Background color scheme
syntax on
set t_Co=256
set background=dark
colorscheme onedark

set relativenumber
set number

" Search settings
set nohlsearch
set ignorecase
set incsearch

" Ruler and color column
set ruler
set colorcolumn=80
highlight ColorColumn ctermbg=236

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

" Disable swap files and backups
set noswapfile
set nobackup

" Configure splits
set splitright
set splitbelow

" Autocommands
au BufRead,BufNewFile *.jbuilder setfiletype ruby
au FileType ruby compiler ruby

" Autocomplete
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" Scroll past end / beginning
set scrolloff=5

" Automatic file read / write
set autoread
set autowrite

" Enable shared clipboard
set clipboard=unnamed

" Flexible window splits
set winwidth=84

" Wait to redraw
set lazyredraw

" Performance boost
set ttyfast

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Leader aliases
let mapleader=" "
noremap <Leader>rt :!ctags -R --languages=ruby --exclude=.git
      \ --exclude=log . $(bundle list --paths)<CR><CR>
noremap <Leader>j <C-]>
noremap <Leader>k <C-t>
noremap <Leader>t :tabe<CR>
noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>f :Ag
" Split navigation
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
" Tabs navigation
noremap <Leader>[ gT
noremap <Leader>] gt

" Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='bubblegum'

" Fugitive
set diffopt+=vertical

" CtrlP
set wildignore+=*/tmp/*,*.log

if has('nvim')
  tnoremap <Leader>e <C-\><C-n>
endif

" Enable for light mode

"colorscheme github
"let g:airline_theme='base16'

" TODO:
" - rails plugin
" - enable oh-my-zsh commands
