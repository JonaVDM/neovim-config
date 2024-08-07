lua << EOF
require 'init'
EOF

set encoding=UTF-8

nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>i <cmd>Telescope neoclip<cr>
nnoremap <leader><c-p> <cmd>Telescope live_grep<cr>

vnoremap <leader>y "+y

imap <silent><expr> <C-Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
