let mapleader = " "

nnoremap <leader>ss <cmd>Telescope find_files<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>
nnoremap <leader>sw <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>:FloatermNew! --autoclose=2 --height=0.9 --width=0.9 cd %:p:h && lazygit<cr>
nnoremap <leader>fd <cmd>:FloatermNew --autoclose=2 --height=0.9 --width=0.9 nnn<cr>
tnoremap <C-c> <cmd>FloatermKill<cr>
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
nnoremap <leader>i <cmd>:e ~/.config/nvim/init.vim<cr>
nnoremap <leader>m <cmd>:e ~/.config/nvim/mappings.vim<cr>
" nnoremap gr <cmd>lua vim.lsp.buf.references()<cr>
" nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr>
" nnoremap <F2> <cmd>lua vim.lsp.buf.rename()<cr>
" nnoremap K <cmd>lua vim.lsp.buf.hover()<cr>

" https://youtu.be/qZO9A5F6BZs?t=365
" greatest remap ever
xnoremap <leader>p "_dP
" next greatest remap ever: asbjoornHaland
nnoremap <leader>y "-y
vnoremap <leader>y "+y
nmap <leader>Y "+Y
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Move to beginning/end of line without taking my fingers off of home row
nnoremap H ^
nnoremap L $

" Insert line above cursor and move cursor to that line at correct indent while staying in insert mode
inoremap <silent><c-o> <esc>O

" This map is to split and then move the focus
nnoremap <leader>v <C-w>v<C-w>l

" Buffers
nnoremap <leader>w <cmd>bw<cr>
" nnoremap <tab> <cmd>bn<cr>
" nnoremap <s-tab> <cmd>bp<cr>
" nnoremap <leader><tab> :bw<cr>
" nnoremap <leader><s-tab> :bw!<cr>
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Move lines around
nnoremap <C-j> :m .+1<cr>==
nnoremap <C-k> :m .-2<cr>==
inoremap <C-j> <Esc>:m .+1<cr>==gi
inoremap <C-k> <Esc>:m .-2<cr>==gi
vnoremap <C-j> :m '>+1<cr>gv=gv
vnoremap <C-k> :m '<-2<cr>gv=gv
:nmap <leader>e <Cmd>CocCommand explorer --width=80<CR>
