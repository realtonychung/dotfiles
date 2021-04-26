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
Plug 'preservim/nerdcommenter'

" yss surrounds the whole line
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
"
" Trees
Plug 'mbbill/undotree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'sbdchd/neoformat'
Plug 'a-vrma/black-nvim', {'do': ':UpdateRemotePlugins'}

call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim

lua << EOF
require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
EOF


