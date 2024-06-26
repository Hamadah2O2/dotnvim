lua require("toggleterm").setup({})

" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><a-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><a-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <silent><a-t> <C-\><C-n><Cmd>exe v:count1 . "ToggleTerm"<CR>
tnoremap <silent><C-\><C-\> <C-\><C-n><CR>
" tmap jj <esc>
