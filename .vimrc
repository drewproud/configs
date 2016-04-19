set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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


" PLUGINS
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'

Plugin 'othree/javascript-libraries-syntax.vim'
let g:used_javascript_libs = 'underscore,jquery'

Bundle 'mxw/vim-jsx'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'

Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dkprice/vim-easygrep'
Plugin 'scrooloose/nerdcommenter'

" DREW'S STUFF
let mapleader=" "

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" fix backspace to work like normal editor
set backspace=indent,eol,start

" ignore in search
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set wildchar=<Tab> wildmenu wildmode=full

" line numbers
set number

" better escape
inoremap jj <Esc>

" movement
nnoremap <Leader>a :b#<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" shift-enter to leave insert mode
inoremap <S-CR> <Esc>

" NERDTree toggle
map <C-n> :NERDTreeToggle<CR>

" NERDCommenter
nnoremap <D-/> :call NERDComment(0,"toggle")<CR>
vnoremap <D-/> :call NERDComment(0,"toggle")<CR>
inoremap <D-/> :call NERDComment(0,"toggle")<CR>

" check file change every 4 seconds ('CursorHold') and reload the buffer upon detecting change
set autoread
au CursorHold * checktime

syntax on
colorscheme monokai

" important commands
" ZZ -> close window
" ctrl-w, HJKL -> change window focus
" [:vertical] :sbuffer -> split buffer
" :b + TAB -> change buffer
" :bd delete buffer
" :hide -> hides current window
" :on closes all windows but current

