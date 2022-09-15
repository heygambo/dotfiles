lua << EOF
local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap = true, silent = true }
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript" }
}

nvim_lsp.eslint.setup{
  on_attach = on_attach
}

nvim_lsp.volar.setup{
  on_attach = on_attach
}
EOF

autocmd BufWritePre *.js,*.ts,*.vue EslintFixAll
