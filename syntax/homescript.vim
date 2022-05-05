" syntax/homescript.vim
" Match TODO comments
syntax keyword homescriptTodos TODO

" Match language specific keywords
syntax keyword homescriptKeywords
    \ if
    \ else

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
syntax region homescriptString start=/"/ end=/"/ oneline contains=homescriptStringAlt
syntax region homescriptStringAlt start=/'/ end=/'/ contained containedin=homescriptString

highlight default link homescriptTodos Todo

highlight default link homescriptString String
highlight default link homescriptNumber Number
highlight default link homescriptBoolean Boolean 

highlight default link homescriptKeywords Keyword
