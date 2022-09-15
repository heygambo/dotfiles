lua << EOF
require('nvim-treesitter.configs').setup {
  ensure_installed = "all",

  -- https://github.com/HendrikRoth/dotfiles/commit/2902febd8e3819fd5545acd0a3e1441cdd73c331#diff-6b1b12db07c424f0107ae689521a8a6c850e15bb090d0ded32d2769631734d09
  ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
  highlight = {
    enable = true
  },
  indent = {
    enable = true
  },
  matchup = {
    enable = true
  },
  autotag = {
    enable = true
  }
}
EOF
