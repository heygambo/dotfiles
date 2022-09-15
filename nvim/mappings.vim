let mapleader = " "

nnoremap <leader>ss <cmd>Telescope find_files<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>
nnoremap <leader>sw <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>:FloatermNew! --autoclose=2 --height=0.9 --width=0.9 cd %:p:h && lazygit<cr>
nnoremap <leader>fd <cmd>:FloatermNew --autoclose=2 --height=0.9 --width=0.9 nnn<cr>
tnoremap <C-c> <cmd>FloatermKill<cr>
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
nnoremap <leader>i <cmd>:e ~/.config/nvim/init.vim<cr>
nnoremap gd <cmd>lua vim.lsp.buf.definition()<cr>
nnoremap K <cmd>lua vim.lsp.buf.hover()<cr>
