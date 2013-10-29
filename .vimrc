" " Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
"
" " Better copy & paste
" " When you want to paste large blocks of code into vim, press F2 before you
" " paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed
"
" " Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again
"
" " Rebind <Leader> key
let mapleader = ","
"
" " Bind nohl
" " Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>
"
" " Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
"
" " Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows
"
" " bind Ctrl+<movement> keys to move around the windows, instead of using
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"
" " easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
"
" " map sort function to a key
vnoremap <Leader>s :sort<CR>
"
" " easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
"
" " Show whitespace
" " MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
"
" " Color scheme
set t_Co=256
color wombat256mod
"
" " Enable syntax highlighting
filetype plugin indent on
syntax on
"
" " Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233
"
" " easier formatting of paragraphs
vmap Q gq
nmap Q gqap
"
" " Useful settings
set history=700
set undolevels=700
"
" " Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
"
" " Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
"
" " Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile
"
" " Setup Pathogen to manage your plugins
call pathogen#infect()
"
" " Settings for vim-powerline
set laststatus=2
"
" " Settings for ctrlp
let g:ctrlp_max_height = 30
" "" sample for ignores set wildignore+=*.pyc
"
" What's missing: 
" "" Omnibox, code completion
