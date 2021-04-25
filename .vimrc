filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set belloff=all
set spell 
set spelllang=nb,en
let mapleader=" "
set updatetime=500
set term=xterm
set mouse=a
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'shougo/context_filetype.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'omnisharp/omnisharp-vim'
"Plugin 'valloric/youcompleteme'

Plugin 'neoclide/coc.nvim'

Plugin 'marijnh/tern_for_vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'styled-components/vim-styled-components'
Plugin 'jparise/vim-graphql'
Plugin 'prettier/vim-prettier'
Plugin 'chiel92/vim-autoformat'
"Plugin 'calviken/vim-gdscript3'
Plugin 'habamax/vim-godot'



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

map <A-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.swp$', '\.meta$']

set omnifunc=syntaxcomplete#Complete

" CTRLP settings
" Old let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|build|ShaderCache|PackageCache|Temp|.git)|(\.(swp|ico|git|svn|meta|bin|dll|pdb))$'

set wildignore+=*node_modules\\*,*ShaderCache*,*PackageCache*,*.git*,*build\\*
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows


let g:ctrlp_custom_ignore = {
			\ 'dir':  'build\|dist\|Temp',
			\ 'file': '(\.(swp\|ico\|png\|git\|meta\|svn\|dll\|pdb\|meta))$',
			\ }
"let g:ctrlp_custom_ignore = 'build'

let g:ctrlp_max_files = 0
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'

" YouCompleteMe settings

" NERDTree settings
let NERDTreeShowHidden=1

" Godot settings


"Gvim Settings
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set guifont=Consolas:h14:cANSI

colorscheme molokai

" coc Settings
"let g:OmniSharp_server_path = 'C:\tools\omnisharp\OmniSharp.exe'
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Generic maps

map <leader>r :source ~/_vimrc<cr>

nnoremap <A-j> <C-W><C-J>
nnoremap <A-k> <C-W><C-K>
nnoremap <A-l> <C-W><C-L>
nnoremap <A-h> <C-W><C-H>

map <A-i> :tabn<CR>
map <A-u> :tabp<CR>

map <S-A-j> <C-w>s
map <S-A-l> <C-w>s
map <S-A-h> <C-w>v
map <S-A-l> <C-w>v

map <A-q> :wq<CR>
map <A-w> :w<CR>

map <leader>f :Autoformat<CR>
autocmd FileType javascript nnoremap <buffer> <leader>f :Prettier<CR>

"nnoremap <A-g> :YcmCompleter GoToDefinition<CR>
nmap <silent> <A-g> <Plug>(coc-definition)
