" Forces to use vim settings rather than vi settings
set nocompatible

" Tweak backspace behaviour
set backspace=indent,eol,start

syntax on

set relativenumber

set ignorecase

" Ruler and color column
set ruler
set colorcolumn=80
highlight ColorColumn ctermbg=8

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

" Formats for extensions
au BufRead,BufNewFile *.jbuilder setfiletype ruby
autocmd FileType ruby compiler ruby

" Autocomplete
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" Scroll past end / beginning
set scrolloff=5

" Background color scheme
set background=dark

" Automatic file reload
set autoread

" Enable shared clipboard
set clipboard=unnamed

" Flexible window splits
set winwidth=84

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

" Plugins loading with pathogen
execute pathogen#infect()

" TODO:
" - rails plugin
" - enable oh-my-zsh commands
