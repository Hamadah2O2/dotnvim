local map = vim.keymap.set
local opt1 = { noremap = true, silent = true }
vim.g.mapleader = " "

-- ###################
-- #### KeyMaping ####
-- ###################

map("i", "jj", "<esc>", {})
map({"n", "v"}, ";", ":", {})
-- quit 
map({"n", "i", "v"}, "<C-q>", "<esc>:q<cr>", {
  noremap = true,
  silent = true,
})

--  remap always center
--  function! CentreCursor()
--      let pos = getpos(".")
--      normal! zz
--      call setpos(".", pos)
--  endfunction
--  nnoremap j jzz
--  nnoremap k kzz

-- " horizontal slide
-- nnoremap <A-L> 5zl5l
-- nnoremap <A-H> 5zh5h
-- " end horizontal slide

-- " ccc key
--     nnoremap ccc :CccPick<CR>

-- " Vim Window Navigate
-- nnoremap <C-h> <C-w><C-h>
-- nnoremap <C-l> <C-w><C-l>
-- nnoremap <C-j> <C-w><C-j>
-- nnoremap <C-k> <C-w><C-k>
-- " END

-- " TabNavigate
map("n", "<A-[>", ":tabNext<CR>", opt1)
map("n", "<A-]>", ":tabnext<CR>", opt1)
map("n", "<A-S-t>", ":tabnew<CR>", opt1)

-- " ToggleTerm Manager
-- nnoremap <silent> <Space>ft <Cmd>Telescope toggleterm_manager<CR>
-- " End ToggleTerm Manager
--
-- " this tes line asa
-- " save remap
-- nnoremap <silent> <C-S> :update<CR>
