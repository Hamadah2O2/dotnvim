lua << EOF
local default = {
  -- Sets the highlight for selected items within the picker.
  TelescopeSelection = { default = true, link = "Visual" },
  TelescopeSelectionCaret = { default = true, link = "TelescopeSelection" },
  TelescopeMultiSelection = { default = true, link = "Type" },
  TelescopeMultiIcon = { default = true, link = "Identifier" },

  -- "Normal" in the floating windows created by telescope.
  TelescopeNormal = { default = true, link = "Normal" },
  TelescopePreviewNormal = { default = true, link = "TelescopeNormal" },
  TelescopePromptNormal = { default = true, link = "TelescopeNormal" },
  TelescopeResultsNormal = { default = true, link = "TelescopeNormal" },

  -- Border highlight groups.
  --   Use TelescopeBorder to override the default.
  --   Otherwise set them specifically
  TelescopeBorder = { default = true, link = "TelescopeNormal" },
  TelescopePromptBorder = { default = true, link = "TelescopeBorder" },
  TelescopeResultsBorder = { default = true, link = "TelescopeBorder" },
  TelescopePreviewBorder = { default = true, link = "TelescopeBorder" },

  -- Title highlight groups.
  --   Use TelescopeTitle to override the default.
  --   Otherwise set them specifically
  TelescopeTitle = { default = true, link = "TelescopeBorder" },
  TelescopePromptTitle = { default = true, link = "TelescopeTitle" },
  TelescopeResultsTitle = { default = true, link = "TelescopeTitle" },
  TelescopePreviewTitle = { default = true, link = "TelescopeTitle" },

  TelescopePromptCounter = { default = true, link = "NonText" },

  -- Used for highlighting characters that you match.
  TelescopeMatching = { default = true, link = "Special" },

  -- Used for the prompt prefix
  TelescopePromptPrefix = { default = true, link = "Identifier" },

  -- Used for highlighting the matched line inside Previewer. Works only for (vim_buffer_ previewer)
  TelescopePreviewLine = { default = true, link = "Visual" },
  TelescopePreviewMatch = { default = true, link = "Search" },

  TelescopePreviewPipe = { default = true, link = "Constant" },
  TelescopePreviewCharDev = { default = true, link = "Constant" },
  TelescopePreviewDirectory = { default = true, link = "Directory" },
  TelescopePreviewBlock = { default = true, link = "Constant" },
  TelescopePreviewLink = { default = true, link = "Special" },
  TelescopePreviewSocket = { default = true, link = "Statement" },
  TelescopePreviewRead = { default = true, link = "Constant" },
  TelescopePreviewWrite = { default = true, link = "Statement" },
  TelescopePreviewExecute = { default = true, link = "String" },
  TelescopePreviewHyphen = { default = true, link = "NonText" },
  TelescopePreviewSticky = { default = true, link = "Keyword" },
  TelescopePreviewSize = { default = true, link = "String" },
  TelescopePreviewUser = { default = true, link = "Constant" },
  TelescopePreviewGroup = { default = true, link = "Constant" },
  TelescopePreviewDate = { default = true, link = "Directory" },
  TelescopePreviewMessage = { default = true, link = "TelescopePreviewNormal" },
  TelescopePreviewMessageFillchar = { default = true, link = "TelescopePreviewMessage" },

  -- Used for Picker specific Results highlighting
  TelescopeResultsClass = { default = true, link = "Function" },
  TelescopeResultsConstant = { default = true, link = "Constant" },
  TelescopeResultsField = { default = true, link = "Function" },
  TelescopeResultsFunction = { default = true, link = "Function" },
  TelescopeResultsMethod = { default = true, link = "Method" },
  TelescopeResultsOperator = { default = true, link = "Operator" },
  TelescopeResultsStruct = { default = true, link = "Struct" },
  TelescopeResultsVariable = { default = true, link = "SpecialChar" },

  TelescopeResultsLineNr = { default = true, link = "LineNr" },
  TelescopeResultsIdentifier = { default = true, link = "Identifier" },
  TelescopeResultsNumber = { default = true, link = "Number" },
  TelescopeResultsComment = { default = true, link = "Comment" },
  TelescopeResultsSpecialComment = { default = true, link = "SpecialComment" },

  -- Used for git status Results highlighting
  TelescopeResultsDiffChange = { default = true, link = "DiffChange" },
  TelescopeResultsDiffAdd = { default = true, link = "DiffAdd" },
  TelescopeResultsDiffDelete = { default = true, link = "DiffDelete" },
  TelescopeResultsDiffUntracked = { default = true, link = "NonText" },
}

local telescoopehi = {
}
EOF

" Telescope Promp
 :hi! link TelescopePromptNormal DiffChange
 :hi! link TelescopePromptBorder DiffChange
 :hi! TelescopePromptTitle 
 :hi! TelescopePromptCounter 
 :hi! TelescopePromptPrefix 

 :hi! TelescopeSelection 
 :hi! TelescopeSelectionCaret 
 :hi! TelescopeMultiSelection 
 :hi! TelescopeMultiIcon 

 :hi! TelescopeNormal 
 :hi! TelescopePreviewNormal 
 :hi! TelescopeResultsNormal 

 :hi! TelescopeBorder 
 :hi! TelescopeResultsBorder 
 :hi! TelescopePreviewBorder 

 :hi! TelescopeTitle 
 :hi! TelescopeResultsTitle 
 :hi! TelescopePreviewTitle 


 :hi! TelescopeMatching 


 :hi! TelescopePreviewLine 
 :hi! TelescopePreviewMatch 

 :hi! TelescopePreviewPipe 
 :hi! TelescopePreviewCharDev 
 :hi! TelescopePreviewDirectory 
 :hi! TelescopePreviewBlock 
 :hi! TelescopePreviewLink 
 :hi! TelescopePreviewSocket 
 :hi! TelescopePreviewRead 
 :hi! TelescopePreviewWrite 
 :hi! TelescopePreviewExecute 
 :hi! TelescopePreviewHyphen 
 :hi! TelescopePreviewSticky 
 :hi! TelescopePreviewSize 
 :hi! TelescopePreviewUser 
 :hi! TelescopePreviewGroup 
 :hi! TelescopePreviewDate 
 :hi! TelescopePreviewMessage 
 :hi! TelescopePreviewMessageFillchar 

 :hi! TelescopeResultsClass 
 :hi! TelescopeResultsConstant 
 :hi! TelescopeResultsField 
 :hi! TelescopeResultsFunction 
 :hi! TelescopeResultsMethod 
 :hi! TelescopeResultsOperator 
 :hi! TelescopeResultsStruct 
 :hi! TelescopeResultsVariable 

 :hi! TelescopeResultsLineNr 
 :hi! TelescopeResultsIdentifier 
 :hi! TelescopeResultsNumber 
 :hi! TelescopeResultsComment 
 :hi! TelescopeResultsSpecialComment 

 :hi! TelescopeResultsDiffChange 
 :hi! TelescopeResultsDiffAdd 
 :hi! TelescopeResultsDiffDelete 
 :hi! TelescopeResultsDiffUntracked 
