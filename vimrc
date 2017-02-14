" Forces to use vim settings rather than vi settings
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'kylef/apiblueprint.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-bundler'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-scripts/Tabmerge'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'janko-m/vim-test'
Plugin 'rizzatti/dash.vim'
Plugin 'mattn/emmet-vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'joshdick/onedark.vim'
Plugin 'hhff/SpacegrayEighties.vim'
Plugin 'endel/vim-github-colorscheme'

call vundle#end()

" Tweak backspace behaviour
set backspace=indent,eol,start

" Enable mouse
set mouse=a

" Background color scheme
syntax on
set background=dark
colorscheme onedark

" Airline
set laststatus=2
set noshowmode
let g:airline_powerline_fonts=1
let g:airline_theme='onedark'

" Nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

set relativenumber
set number

" Search settings
set nohlsearch
set ignorecase
set incsearch

" Ruler and color column
set ruler
set colorcolumn=80

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

" Adjust tabs for .go files
autocmd BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4 nolist

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239

" Invisible characters
set list listchars=tab:»·,trail:·,nbsp:·

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
noremap <Leader>gl :Git log --oneline --decorate --graph<CR>
" Split navigation
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
" Tabs navigation
noremap <Leader>[ gT
noremap <Leader>] gt

" Supertab
inoremap <Tab> <C-P>

" Fugitive
set diffopt+=vertical

" CtrlP
set wildignore+=*/tmp/*,*.log
set tags=./tags;

if has('nvim')
  tnoremap <Leader>e <C-\><C-n>
endif
