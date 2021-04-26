" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
"set autochdir                           " Your working directory will always be the same as your working directory

set autoindent                          " Good auto indent
set background=dark                     " tell vim what the background color looks like
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cmdheight=2                         " More space for displaying messages
set colorcolumn=80
set completeopt=menuone,noinsert,noselect
set conceallevel=0                      " So that I can see `` in markdown files
set cursorline                          " Enable highlighting of the current line
set encoding=utf-8                      " The encoding displayed
set expandtab                           " Converts tabs to spaces
set exrc
set fileencoding=utf-8                  " The encoding written to file
set formatoptions-=cro                  " Stop newline continution of comments
set guicursor=n-c-v:block-nCursor
set hidden                              " Required to keep multiple buffers open multiple buffers
set incsearch
set iskeyword+=-                      	" treat dash separated words as a word text object"
set laststatus=0                        " Always display the status line
set mouse=a                             " Enable your mouse
set nobackup                            " This is recommended by coc
set noerrorbells
set nohlsearch
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set noswapfile
set nowrap                              " Display long lines as just one line
set nowritebackup                       " This is recommended by coc
set nu
set number                              " Line numbers
set pumheight=10                        " Makes popup menu smaller
set relativenumber
set ruler              			        " Show the cursor position all the time
set scrolloff=8
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set showtabline=2                       " Always show tabs
set signcolumn=yes
set smartcase
set smartindent                         " Makes indenting smart
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

" COLORS
set bg=light
highlight Normal guibg=none
colorscheme gruvbox

"highlight ColorColumn ctermbg=0 guibg=grey
"hi SignColumn guibg=none
"hi CursorLineNR guibg=None
"highlight Normal guibg=none
"highlight LineNr guifg=#ff8659
"highlight LineNr guifg=#aed75f
"highlight LineNr guifg=#5eacd3
"highlight netrwDir guifg=#5eacd3
"highlight qfFileName guifg=#aed75f
"hi TelescopeBorder guifg=#5eacd
set t_Co=256                            " Support 256 colors

set tabstop=2                           " Insert 2 spaces for a tab
set tabstop=4 softtabstop=4
set termguicolors
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set undodir=~/.vim/undodir
set undofile
set updatetime=300                      " Faster completion
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
