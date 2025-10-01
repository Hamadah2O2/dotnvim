vim.cmd([[autocmd BufRead,BufNewFile *.rasi setfiletype rasi]])

-- color for html tag
vim.cmd([[autocmd FileType html hi! link htmlTag @tag.delimiter]])
vim.cmd([[autocmd FileType html hi! link htmlEndTag htmlTag]])
vim.cmd([[autocmd FileType html hi! link htmlTagName @tag.builtin]])
vim.cmd([[autocmd FileType html hi! link htmlArg @tag.attribute]])
vim.cmd([[autocmd FileType html hi! link htmlHugoFunction @function.builtin]])
