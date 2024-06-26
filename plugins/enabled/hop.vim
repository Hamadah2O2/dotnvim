lua << EOF
require'hop'.setup {
  -- Hop configuration goes there
}
EOF
nnoremap <leader>qw <cmd>:HopWord<CR>
" inoremap <leader>qw <cmd>:HopWord<CR>

nnoremap <leader>qe <cmd>:HopAnywhere<CR>
" inoremap <leader>qe <cmd>:HopAnywhere<CR>

