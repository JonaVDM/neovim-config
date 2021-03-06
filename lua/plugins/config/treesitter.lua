local treesitter = require 'nvim-treesitter.configs'

treesitter.setup({
  highlight = {
    ensure_installed = 'maintained',
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  endwise = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
})
