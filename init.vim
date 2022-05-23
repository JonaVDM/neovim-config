let mapleader = ','
call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

source ~/.config/nvim/config/scope.vim
source ~/.config/nvim/config/git.vim
source ~/.config/nvim/config/dashboard.vim

" Commenter
source ~/.config/nvim/config/comments.vim

" Setup LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'onsails/lspkind.nvim'

" The requirements for the tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'jiangmiao/auto-pairs'

" Devicons for nerdtree/vim-airline
Plug 'ryanoasis/vim-devicons'

" Go development
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

lua << EOF
require('completion')
require('scope')
require('tree')
EOF

colorscheme nord
let g:airline#extensions#tabline#enabled = 1

set encoding=UTF-8
source ~/.config/nvim/config/vars.vim
source ~/.config/nvim/config/keybindings.vim
