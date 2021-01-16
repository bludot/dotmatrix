set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/usr/local/opt/fzf
call plug#begin('~/.vim/plugged')

"===[ Vim design ]==="

  " --- colorschemes --- "
    " Plug 'nanotech/jellybeans.vim'
    " Plug 'altercation/vim-colors-solarized'
    " Plug 'jdkanani/vim-material-theme'
    Plug 'flazz/vim-colorschemes'                                                                                  "  colorschemes for vim
    Plug 'ayu-theme/ayu-vim'
    Plug 'reedes/vim-colors-pencil'
    Plug 'atelierbram/Base2Tone-vim'
    Plug 'chriskempson/base16-vim'

  " --- icons --- "
    Plug 'ryanoasis/vim-devicons'                                                                                  "  icons for files

  " --- status bar (top and bottom) --- "
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

  " --- denite vim UI --- "
    Plug 'Shougo/denite.nvim'                                                                                      "  🐉 Dark powered asynchronous unite all interfaces for Neovim/Vim8

  " --- Other goodies --- "
    Plug 'junegunn/vim-emoji'                                                                                      "  emoji in vim (not working)
    Plug 'tpope/vim-eunuch'                                                                                        "  Vim sugar for the UNIX shell commands
    Plug 'Shougo/deol.nvim'


"===[ Vim editor helpers ]==="

  Plug 'tpope/vim-sensible'                                                                                        "  sensible key bindings
  Plug 'terryma/vim-multiple-cursors'                                                                              "  multiple cursors (ctrl+n after selecting)
  Plug 'yuttie/comfortable-motion.vim'                                                                             "  Brings physics-based smooth scrolling to the Vim world!
  Plug 'ervandew/screen'                                                                                           "  Simulate a split shell in vim using gnu screen or tmux<Paste>
  Plug 'tpope/vim-obsession'                                                                                       "  session files updated
  Plug 'tpope/vim-commentary'                                                                                      "  Add comments block wise

  " --- tabs --- "
    Plug 'ervandew/supertab'                                                                                       "  vim plugin which allows you to use <Tab> for all your insert completion needs
    Plug 'godlygeek/tabular'                                                                                       "  Vim script for text filtering and alignment
    Plug 'Yggdroot/indentLine'                                                                                     "  A vim plugin to display the indention levels with thin vertical lines

  " --- searching --- "
    Plug 'dyng/ctrlsf.vim'                                                                                         "  search in files for text
    Plug 'ctrlpvim/ctrlp.vim'                                                                                      "  fuzzy search
    Plug 'junegunn/fzf.vim'                                                                                        "  fzf support for vim (fuzzy search/matching/whatever)
    Plug 'mileszs/ack.vim'                                                                                         "  fuzzy search with ack

  " --- file manager --- "
    Plug 'scrooloose/nerdtree'                                                                                     "  file manager
    if has('nvim')
      Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }                                                    "  file manager using denite
    else
      Plug 'Shougo/defx.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif



"===[ Code helpers ]==="

  " --- code tagging --- "
    Plug 'majutsushi/tagbar'                                                                                       "  code tags
    " Plug 'hushicai/tagbar-javascript.vim'
    " Plug 'ludovicchabant/vim-gutentags'

  " --- auto completion --- "
    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif

  " --- Generic Linter --- "
    Plug 'w0rp/ale'                                                                                                "  code linter

  " --- Code formating --- "
    Plug 'sbdchd/neoformat'                                                                                        "  format code

  " --- Code Coverage --- "
    Plug 'ruanyl/coverage.vim'                                                                                     " Code coverage (with lcov)



"===[ git related plugins ]==="

  Plug 'tpope/vim-fugitive'                                                                                        "  A Git wrapper so awesome, it should be illegal
  Plug 'gregsexton/gitv'                                                                                           "  see commit changes
  Plug 'airblade/vim-gitgutter'                                                                                    "  gutter showing git changes

  " --- pull request reviewing?
    Plug 'junkblocker/patchreview-vim'
    Plug 'codegram/vim-codereview'



"===[ Code syntax ]==="

  Plug 'leshill/vim-json', { 'for': 'json' }                                                                       "  json for vim
  Plug 'fatih/vim-go', { 'for': ['go', 'golang'] }                                                                 "  go for vim
  Plug 'tmux-plugins/vim-tmux'                                                                                     "  syntax for tmux configs



"===[ Language Specific ]==="

  "===[ Markdown ]==="

    " --- syntax --- "
      Plug 'tpope/vim-markdown', { 'for': 'markdown' }                                                             "  markdown in vim

    " --- plugins --- "
      Plug 'junegunn/vim-xmark', { 'do': 'make', 'for': 'markdown' }                                               "  view markdown in browser

  "===[ Javascript ]==="

    " --- syntax --- "
      Plug 'pangloss/vim-javascript'
      Plug 'leafgarland/typescript-vim'
      Plug 'maxmellon/vim-jsx-pretty'
      Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

    " --- code completion --- "
      Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern', 'for': ['javascript', 'javascript.jsx'] }    "  ternjs for code completion
      Plug 'wokalski/autocomplete-flow', { 'do': 'yarn global add flow-bin' }                                       "  Neovim and vim Flow autocompletion for deoplete + neosnippet
      " For func argument completion
      Plug 'Shougo/neosnippet'
      Plug 'Shougo/neosnippet-snippets'
      Plug 'Shougo/echodoc.vim'
      " Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }                                        "  jspc code completion
      " Plug 'prabirshrestha/asyncomplete.vim'
      " Plug 'prabirshrestha/asyncomplete-buffer.vim'

    " --- plugins to help code --- "
      Plug 'Galooshi/vim-import-js', { 'for': ['javascript', 'javascript.jsx'], 'do': 'yarn global add import-js' } "  import js files
      Plug 'heavenshell/vim-jsdoc'                                                                                 "  jsdoc helper

    " --- formatters/prettiers --- "
      " Plug 'prettier/vim-prettier', {
      "     \ 'do': 'npm install',
      "     \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss'] }

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
