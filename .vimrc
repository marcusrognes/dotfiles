filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set belloff=all
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'valloric/youcompleteme'
Plugin 'marijnh/tern_for_vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'styled-components/vim-styled-components'
Plugin 'jparise/vim-graphql'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set backspace=indent,eol,start
syntax on

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.swp$']

set omnifunc=syntaxcomplete#Complete


let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build|.git)|(\.(swp|ico|git|svn))$'


let NERDTreeShowHidden=1
