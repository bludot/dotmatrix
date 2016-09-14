

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"Plugin 'Chiel92/vim-autoformat'

"Plugin 'maksimr/vim-jsbeautify'

"Plugin 'JamshedVesuna/vim-markdown-preview'

" Plugin 'altercation/vim-colors-solarized'

"Plugin 'dracula/vim'

"Plugin 'editorconfig/editorconfig-vim'

"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"Plugin 'scrooloose/nerdTree'

"Plugin 'flazz/vim-colorschemes'

" Plugin 'Valloric/YouCompleteMe'

Plugin 'hashrocket/vim-hashrocket'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'adamlowe/vim-slurper'
Plugin 'duff/vim-bufonly'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/gitv'
Plugin 'heartsentwined/vim-emblem'
Plugin 'jgdavey/tslime.vim'
Plugin 'jgdavey/vim-blockle'
Plugin 'jgdavey/vim-railscasts'
Plugin 'jgdavey/vim-turbux'
Plugin 'jgdavey/vim-weefactor'
Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'rondale-sc/vim-spacejam'
Plugin 'slim-template/vim-slim'
Plugin 'therubymug/vim-pyte'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rsi'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vividchalk'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'wgibbs/vim-irblack'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'Shougo/unite.vim'
Plugin 'majutsushi/tagbar'
Plugin 'justincampbell/vim-eighties'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


syntax on
filetype plugin indent on

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif
