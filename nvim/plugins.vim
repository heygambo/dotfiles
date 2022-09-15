call plug#begin('~/.vim/plugged')

" Theme
Plug 'artanikin/vim-synthwave84'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'unblevable/quick-scope'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind.nvim'

" Navigation
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'voldikss/vim-floaterm'

" Akira's Plugins
" Plug 'windwp/nvim-autopairs'
" Plug 'andymass/vim-matchup'
" Plug 'tpope/vim-surround'
Plug 'windwp/nvim-autopairs'
" Plug 'windwp/nvim-ts-autotag'
call plug#end()
