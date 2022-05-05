" syntax/homescript.vim
" Match TODO comments
syntax keyword homescriptTodos TODO

" Match language specific keywords
syntax keyword homescriptKeywords
    \ if
    \ else


" Match language specific functions
syntax keyword homescriptFunctions
    \ switch
    \ switchOn
    \ addUser
    \ delUser
    \ addPerm
    \ delPerm

" Match booleans
syntax keyword homescriptBoolean
    \ true
    \ false
    \ on
    \ off

" Match all homescript number types
syntax match homescriptNumber "\v<\d+>"
syntax match homescriptNumber "\v<\d+\.\d+>"

" Match strings
syntax region homescriptString start=/"/ end=/"/ oneline
syntax region homescriptStringAlt start=/'/ end=/'/ oneline

highlight default link homescriptTodos Todo

highlight default link homescriptString String
highlight default link homescriptStringAlt String

highlight default link homescriptNumber Number
highlight default link homescriptBoolean Boolean 

highlight default link homescriptKeywords Keyword
