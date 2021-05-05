set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set hidden
set nu
set rnu
set signcolumn=yes
set termguicolors
set scrolloff=10
set noswapfile
set nobackup
set nohlsearch
set completeopt=menuone,noselect

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'neovim/nvim-lspconfig'
Plug 'neovim/nvim-lspconfig', { 'do': 'yarn global add typescript typescript-language-server vls' }
Plug 'hrsh7th/nvim-compe'
Plug 'ghifarit53/tokyonight-vim'
Plug 'phaazon/hop.nvim'
Plug 'itchyny/lightline.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-fugitive'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
" Plug 'dense-analysis/ale'
Plug 'dense-analysis/ale', { 'do': 'yarn global add eslint_d' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree'
call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", 
  highlight = {
    enable = true,
  },
}
EOF

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

let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_fixers = {
\   '*': ['eslint'],
\}
let g:ale_fix_on_save = 1

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true

lua require'lspconfig'.tsserver.setup{ }
lua require'lspconfig'.vuels.setup{ }

hi LspDiagnosticsVirtualTextError guifg=red gui=bold
hi LspDiagnosticsVirtualTextWarning guifg=orange gui=bold
hi LspDiagnosticsVirtualTextInformation guifg=yellow gui=bold
hi LspDiagnosticsVirtualTextHint guifg=green gui=bold

let mapleader = " "

nnoremap <F2> <cmd>ALERename<cr>
nnoremap <F12> <cmd>ALEGoToDefinition<cr>
vnoremap <F5> <cmd>'<,'>sort<cr>

nnoremap <leader>sg <cmd>Telescope git_files<cr>
nnoremap <leader>sf <cmd>Telescope file_browser<cr>
nnoremap <leader>ss <cmd>Telescope live_grep<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>

nnoremap <leader>nt <cmd>NERDTreeFind<cr>
nnoremap <leader>nf <cmd>NERDTreeFind<cr>

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')

nnoremap <leader>w <cmd>bd<cr>
nnoremap <leader>; <cmd>e ~/.config/nvim/init.vim<cr>

" makes it possible to do cmd up and down to move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
