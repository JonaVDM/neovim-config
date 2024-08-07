return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      require 'plugins.config.telescope'
    end
  },
  {
    'AckslD/nvim-neoclip.lua',
    requires = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require 'telescope'.load_extension 'neoclip'
      require 'neoclip'.setup()
    end
  }
}
