vim.opt.termguicolors = true

-- removes the text hint
vim.diagnostic.config({ virtual_text = false })

-- Custom command for quick json formatting - needs jq to be installed
vim.api.nvim_create_user_command('Json', '%!jq .', {})

-- auto remove trailing white space from yaml files
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern='*.yml,*.nix',
  command = "%s/\\s\\+$//e"
})
