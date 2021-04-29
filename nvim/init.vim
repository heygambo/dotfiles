set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set hidden
set nu rnu
set signcolumn=yes
set termguicolors
set scrolloff=8
set noswapfile
set nobackup

call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'phaazon/hop.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-fugitive'
call plug#end()

let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }

hi LspDiagnosticsVirtualTextError guifg=red gui=bold
hi LspDiagnosticsVirtualTextWarning guifg=orange gui=bold
hi LspDiagnosticsVirtualTextInformation guifg=yellow gui=bold
hi LspDiagnosticsVirtualTextHint guifg=green gui=bold

let mapleader = " "

nnoremap <leader>sg <cmd>Telescope git_files<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>
