"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set encoding=UTF-8
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
set incsearch
set completeopt=menuone,noselect
set clipboard=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr
set mouse=a

let g:python_host_prog='/usr/bin/python'

call plug#begin('~/.vim/plugged')

"{{ Look & Feel }}
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mhinz/vim-startify'
" Plug 'junegunn/vim-emoji'
" Plug 'bagrat/vim-buffet'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'ap/vim-css-color'
" Plug 'severin-lemaignan/vim-minimap'

"{{ File management }}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'

"{{ Language Server / Autocomplete }}
Plug 'neovim/nvim-lspconfig', { 'do': 'yarn global add typescript typescript-language-server vls' }
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/nvim-compe'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'dense-analysis/ale', { 'do': 'yarn global add eslint_d' }

"{{ Editing }}
Plug 'elzr/vim-json'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'jparise/vim-graphql'
Plug 'j5shi/CommandlineComplete.vim'

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

" Always show statusline
" set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ }
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'
let g:ale_fixers = {
\   '*': ['eslint'],
\}
let g:ale_fix_on_save = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Compe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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

" let g:neovide_cursor_vfx_mode = "railgun"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-f> :NERDTreeFind<CR>
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable='►'
let g:NERDTreeDirArrowCollapsible='▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeWinSize=38

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "

" Remap ESC to ii
:imap ii <Esc>

"{{ File management }}
nnoremap <leader>sg <cmd>Telescope git_files<cr>
nnoremap <leader>sf <cmd>Telescope file_browser<cr>
nnoremap <leader>sl <cmd>Telescope live_grep<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>

"{{ Language Server / Autocomplete }}
nnoremap <F2> <cmd>ALERename<cr>
nnoremap <F12> <cmd>ALEGoToDefinition<cr>
vnoremap <F5> <cmd>'<,'>sort<cr>

inoremap <silent><expr> <c-space> compe#complete()
inoremap <silent><expr> <cr>      compe#confirm('<cr>')

"{{ Buffers }}
nnoremap <leade>w <cmd>bd<cr>
nnoremap <tab> <cmd>bn<cr>
nnoremap <s-tab> <cmd>bp<cr>
nnoremap <leader><tab> :Bw<cr>
nnoremap <leader><s-tab> :Bw!<cr>
" nnoremap <c-t> :tabnew split<cr>
nnoremap <leader>; <cmd>e ~/.config/nvim/init.vim<cr>

" makes it possible to do cmd up and down to move lines
nnoremap <C-j> :m .+1<cr>==
nnoremap <C-k> :m .-2<cr>==
inoremap <C-j> <Esc>:m .+1<cr>==gi
inoremap <C-k> <Esc>:m .-2<cr>==gi
vnoremap <C-j> :m '>+1<cr>gv=gv
vnoremap <C-k> :m '<-2<cr>gv=gv


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open terminal inside Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>tt :new term://zsh<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-emoji
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" if emoji#available()
"   let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
"   let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
"   let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
"   let g:gitgutter_sign_modified_removed = emoji#for('collision')
" endif
" 
" set completefunc=emoji#complete
