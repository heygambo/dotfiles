let mapleader = " "

nnoremap <leader>ss <cmd>Telescope find_files<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>
nnoremap <leader>sw <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>:FloatermNew! --autoclose=2 --height=0.9 --width=0.9 cd %:p:h && lazygit<cr>
nnoremap <leader>fd <cmd>:FloatermNew --autoclose=2 --height=0.9 --width=0.9 nnn<cr>
tnoremap <C-c> <cmd>FloatermKill<cr>
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
nnoremap <leader>i <cmd>:e ~/.config/nvim/init.vim<cr>
nnoremap lr <cmd>lua vim.lsp.buf.references()<cr>
nnoremap ld <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap <F2> <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap K <cmd>lua vim.lsp.buf.hover()<cr>

" Buffers
nnoremap <leader>w <cmd>bw<cr>
nnoremap <tab> <cmd>bn<cr>
nnoremap <s-tab> <cmd>bp<cr>
nnoremap <leader><tab> :bw<cr>
nnoremap <leader><s-tab> :bw!<cr>

" Move lines around
nnoremap <C-j> :m .+1<cr>==
nnoremap <C-k> :m .-2<cr>==
inoremap <C-j> <Esc>:m .+1<cr>==gi
inoremap <C-k> <Esc>:m .-2<cr>==gi
vnoremap <C-j> :m '>+1<cr>gv=gv
vnoremap <C-k> :m '<-2<cr>gv=gv
