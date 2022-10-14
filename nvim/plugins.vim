call plug#begin('~/.vim/plugged')

" Theme
Plug 'artanikin/vim-synthwave84'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'unblevable/quick-scope'

" LSP
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'onsails/lspkind.nvim'

" COC

Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Navigation
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'ap/vim-buftabline'

" Editing
Plug 'arthurxavierx/vim-caser'
Plug 'github/copilot.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Akira's Plugins
" Plug 'andymass/vim-matchup'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

" TODO
" https://github.com/weirongxu/coc-explorer
" https://github.com/rhysd/clever-f.vim
" https://github.com/ggandor/leap.nvim
" https://github.com/christoomey/vim-tmux-navigator

call plug#end()
