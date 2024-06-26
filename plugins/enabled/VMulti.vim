autocmd User visual_multi_mappings  imap <buffer><expr> <CR> coc#pum#visible() ? 
  \ coc#pum#confirm() : "\<Plug>(VM-I-Return)"

hi! link VM_Mono   DiffText
hi! link VM_Extend DiffAdd
hi! link VM_Cursor Visual
hi! link VM_Insert PmenuSel
