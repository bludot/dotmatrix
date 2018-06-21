set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/usr/local/opt/fzf
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


Plug 'Lokaltog/powerline', {'rtp': '$HOME/Library/Python/3.6/lib/python/site-packages/powerline/bindings/vim/'}

Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'gregsexton/gitv'
Plug 'leshill/vim-json'
Plug 'rondale-sc/vim-spacejam'
Plug 'chiel92/vim-autoformat'
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', {
    \ 'do': 'npm install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss'] }
Plug 'tpope/vim-eunuch'

" --- git related pplugins
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-conflicted'
Plug 'tpope/vim-git'

Plug 'tpope/vim-markdown'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
" --- file manager
Plug 'scrooloose/nerdtree'
" Plug 'Shougo/vimfiler.vim'
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim'
Plug 'fatih/vim-go'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
" Plug 'jsx/jsx.vim'
Plug 'w0rp/ale'
Plug 'ervandew/screen'

Plug 'Yggdroot/indentLine'
" Plug 'breuckelen/vim-resize'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

" --- javascript
" --- --- autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'pangloss/vim-javascript'
Plug 'Galooshi/vim-import-js', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g import-js' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'heavenshell/vim-jsdoc'
Plug 'mxw/vim-jsx'
Plug 'maksimr/vim-jsbeautify'
Plug 'mmalecki/vim-node.js'
Plug 'neoclide/vim-jsx-improve'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'coffee', 'ls', 'typescript'] }
Plug 'moll/vim-node'
Plug 'othree/yajs.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-buffer.vim'

" --- pull request reviewing?
Plug 'junkblocker/patchreview-vim'
Plug 'codegram/vim-codereview'

" --- editor tools
Plug 'terryma/vim-multiple-cursors'
Plug 'dyng/ctrlsf.vim'
Plug 'yuttie/comfortable-motion.vim'

" --- colorschemes
" Plug 'nanotech/jellybeans.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'jdkanani/vim-material-theme'
Plug 'flazz/vim-colorschemes'

" --- tagbar related
Plug 'majutsushi/tagbar'
" Plug 'hushicai/tagbar-javascript.vim'
" Plug 'ludovicchabant/vim-gutentags'

" Plug 'justincampbell/vim-eighties'
Plug 'junegunn/vim-emoji'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

" --- Code tools
Plug 'retorillo/istanbul.vim'

" --- Extras
Plug 'junegunn/vim-xmark', { 'do': 'make' }

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" plugin on GitHub repo
" Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plug 'L9'
" Git plugin not hosted on GitHub
" Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plug 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}

" All of your Plugs must be added before the following line
call plug#end()
filetype plugin indent on    " required
let g:webdevicons_enable = 0

syntax enable

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set shell=zsh

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
