set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'nanotech/jellybeans.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'myusuf3/numbers.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'mileszs/ack.vim'

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-highlight'
Plugin 'vim-scripts/paredit.vim'

Plugin 'vim-ruby/vim-ruby'

Plugin 'Omer/vim-sparql'
Plugin 'n3.vim'

Plugin 'fholgado/minibufexpl.vim'
Plugin 'ervandew/supertab'
Plugin 'moll/vim-bbye'
Plugin 'tetsuo13/Vim-log4j'

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
syntax on

" Airline
let g:airline_powerline_fonts = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Number
set number

" Jellybeans theme
color jellybeans

" NERDtree
map <leader>n :NERDTreeToggle<CR>

" MiniBufExpl
" If you like <C-TAB> and <C-S-TAB> to switch buffers
" in the current window then perform the remapping
noremap <C-TAB>   :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>
" Or, in MRU fashion
" noremap <C-TAB>   :MBEbf<CR>
" noremap <C-S-TAB> :MBEbb<CR>

" Ack.vim
if executable('ag')
  let g:ackprg = 'ag' " --vimgrep'
endif


set tags=.tags

"Automatically enable mouse
set mouse=a 
set history=1000
"set spell

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set backup                  " Backups are nice ...
if has('persistent_undo')
  set undofile                " So is persistent undo ...
  set undolevels=1000         " Maximum number of changes that can be undone
  set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
endif
