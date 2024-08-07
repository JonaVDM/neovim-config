local telescope = require 'telescope'
-- telescope.load_extension('neoclip')
telescope.setup {
  defaults = {
    file_ignore_patterns = { "node_modules", "plugged", ".git", "target", "vendor", 'dist' },
  },
  pickers = {
    find_files = {
      hidden = true
    }
  },
}

-- require 'neoclip'.setup()
