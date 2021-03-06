set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-vdebug/vdebug'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
:set list listchars=tab:>-,trail:x,extends:>
:match Error /\t/
:highlight ExtraWhitespace ctermbg=red guibg=red
":autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

au Filetype python set
     \ tabstop=4
     \ softtabstop=4
     \ shiftwidth=4
     \ textwidth=79
     \ expandtab
     \ autoindent
     \ fileformat=unix
autocmd Filetype cpp set
     \ tabstop=4
     \ softtabstop=4
     \ shiftwidth=4
     \ textwidth=79
     \ expandtab
     \ autoindent
     \ fileformat=unix


au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF

"import os.path
"import sys
"import vim
"if 'VIRTUA_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  sys.path.insert(0, project_base_dir)
"  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this)
"EOF

let python_highlight_all=1
syntax on

"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif

call togglebg#map("<F5>")
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

Plugin 'kien/ctrlp.vim'
" http://www.youtube.com/watch?v=9XrHk3xjYsw
set nu

set clipboard=unnamed
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
"set hlsearch

colorscheme desert
nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>
set wildignore+=**/bower_components/**,**/node_modules/**,**vendor/bundle**
set hlsearch
hi Search cterm=NONE ctermfg=black ctermbg=green
set clipboard=exclude:.*
