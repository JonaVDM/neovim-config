return {

  -- Theme
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function ()
      vim.cmd.colorscheme 'catppuccin'
    end
  },

  -- Start screen
  {
    'letieu/btw.nvim',
    config = function()
      require 'btw'.setup()
    end
  },

  -- Filetree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require 'nvim-tree'.setup {
        open_on_tab = true,
        actions = {
          open_file = {
            resize_window = true
          }
        },
        view = {
          adaptive_size = false,
          side = "left",
          width = 30,
        },
        hijack_cursor = true,
        sync_root_with_cwd = true,
      }
      vim.api.nvim_set_keymap("n", "<c-b>", "<cmd>NvimTreeFindFile<cr>", { noremap = true })
    end
  },

  -- Fancy button bar thingy
  {
    'freddiehaddad/feline.nvim',
    opts = {}
  },

  -- fancy top bar thingy
  {
    'akinsho/bufferline.nvim', 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup{}
    end
  },

  -- Show indentation
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module 'ibl'
    ---@type ibl.config
    opts = {},
  },

  -- Make readme fancy
  {
    'lukas-reineke/headlines.nvim',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    opts = {}
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local configs = require 'nvim-treesitter.configs'

      configs.setup({
        ensure_installed = {
          'dart',
          'go',
          'html',
          'javascript',
          'lua',
          'rust',
          'svelte',
          'vimdoc',
          'vue',
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  },

}
