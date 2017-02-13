" Vundle
" ------------------------------------------- "

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

" Drew's plugins
Plugin 'mhinz/vim-startify'
Plugin 'wesQ3/vim-windowswap'
Plugin 'tpope/vim-sensible'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Valloric/MatchTagAlways'
Plugin 'alvan/vim-closetag'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dkprice/vim-easygrep'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'ruanyl/vim-fixmyjs'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'tpope/vim-surround'
"Plugin 'flowtype/vim-flow'

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

" prevents vim from sometimes creating a new file instead of modifying the old
" one when saving, which can interfere with the webpack file watcher
set backupcopy=yes


" Plugins
" ------------------------------------------- "

" map leader key here in case i use it in plugins?
" not sure if this matters
let mapleader=" "

" Sublime style multiple cursors

" HTML syntax highlighting
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'jinja' : 1,
    \ 'javascript' : 1,
    \}

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js,*.jsx"
let g:used_javascript_libs = 'underscore,jquery,ramda,react'
let g:jsx_ext_required = 0

"Bundle 'mxw/vim-jsx'

" Autocomplete
" make sure to run ~/.vim/bundle/YouCompleteMe/install.py --tern-completer
" after intitial PluginInstall
let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_add_preview_to_completeopt = 0
"set completeopt-=preview
"let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_register_as_syntastic_checker = 0

nnoremap <Leader>j :TernDef<CR>
nnoremap <Leader>J :TernDefSplit<CR>

" Syntax checker
"function! FindConfig(prefix, what, where)
    "let cfg = findfile(a:what, escape(a:where, ' ') . ';')
    "return cfg !=# '' ? ' ' . a:prefix . ' ' . cfg : ''
"endfunction

"autocmd FileType javascript let b:syntastic_javascript_jscs_args =
    "\ get(g:, 'syntastic_javascript_jscs_args', '') .
    "\ FindConfig('-c', '.eslintrc', expand('<amatch>:p:h', 1))

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
" uses global eslintrc
"let g:syntastic_javascript_eslint_exe = 'eslint --no-eslintrc -c ./.eslintrc'
" uses local eslint
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
"let g:syntastic_debug = 1
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
map <leader>e :Errors<cr>
nnoremap <leader>l :lnext<cr>

" similar to command p is ST
map <leader>gf :CtrlPClearAllCaches<cr> :CtrlP features_wip<cr>
nnoremap <Leader>k :CtrlPMRU<cr>

" faster searching

" NERDCommenter
" comment and uncomment with command + /
let g:NERDCustomDelimiter = { 'javascript': { 'left': '// ', 'leftAlt': '/*', 'rightAlt': '*/' }}
nnoremap <D-/> :call NERDComment(0,"toggle")<CR>
vnoremap <D-/> :call NERDComment(0,"toggle")<CR>
inoremap <D-/> :call NERDComment(0,"toggle")<CR>

nnoremap <C-b> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Drew's stuff
" ------------------------------------------- "

" line numbers
set number

" tabs
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab

" fix backspace to work like normal editor
set backspace=indent,eol,start

" ignore in search
let g:ctrlp_max_files = 0
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules*,*/.meteor/*,*/meteor/packages/*,*.pyc

set wildchar=<Tab> wildmenu wildmode=list:longest,full

" better escape
inoremap jj <Esc>
inoremap jk <Esc>

" movement
nnoremap <Leader>a :b#<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" shift-enter to leave insert mode
inoremap <S-CR> <Esc>

" tab width
set expandtab
set smarttab
set tabstop=8 softtabstop=0 shiftwidth=2
command! Tab4 set tabstop=8 softtabstop=0 shiftwidth=4
command! Tab2 set tabstop=8 softtabstop=0 shiftwidth=2

" check file change every 4 seconds ('CursorHold') and reload the buffer upon detecting change
set autoread
au CursorHold * checktime

" BUFFERS
nnoremap <leader>vb :vertical sbuffer 
nnoremap <leader>sb :sbuffer 

" autocomplete colors
highlight Pmenu guibg=DodgerBlue4

" Ctrl SF find
nmap <Leader>f <Plug>CtrlSFPrompt -ignoredir "public" 
noremap <Leader>F :CtrlSFToggle<cr>
vmap <Leader>f <Plug>CtrlSFVwordExec

nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

" Better beginning/end of line movements
nnoremap H ^
nnoremap L $

" Respect destination indentation level when pasting
nnoremap <leader>p p
nnoremap <leader>P P
nnoremap p p'[v']=
nnoremap P P'[v']=
vnoremap <D-l> >gv

syntax on
colorscheme monokai

" Commands
" ------------------------------------------- "
" important commands
" ZZ -> close window
" ctrl-w, HJKL -> change window focus
" [:vertical] :sbuffer -> split buffer
" :b + TAB -> change buffer
" :bd delete buffer
" :hide -> hides current window
" :on closes all windows but current
" <C-i> move to last jump position <C-o> move forward a jump position

" SETUP
" ------------------------------------------- "
" npm install -g eslint-cli
" add .tern-config to ~/
" compile YouCompleteMe
" cd ~/.vim/bundle/tern_for_vim && npm i

