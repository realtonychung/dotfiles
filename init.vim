let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set background=dark

call plug#begin('~/.vim/plugged')
" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Colors
Plug 'gruvbox-community/gruvbox'

" Find
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Trees
Plug 'mbbill/undotree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'sbdchd/neoformat'

call plug#end()

lua require("chungusprotagonist")

highlight Normal guibg=none
colorscheme gruvbox

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>va :lua require('chungusprotagonist.telescope').anime_selector()<CR>

nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

lua << EOF
require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
EOF

highlight ColorColumn ctermbg=0 guibg=grey
hi SignColumn guibg=none
hi CursorLineNR guibg=None
highlight Normal guibg=none
" highlight LineNr guifg=#ff8659
" highlight LineNr guifg=#aed75f
highlight LineNr guifg=#5eacd3
highlight netrwDir guifg=#5eacd3
highlight qfFileName guifg=#aed75f
hi TelescopeBorder guifg=#5eacd
