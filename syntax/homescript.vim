" syntax/homescript.vim
" Match TODO comments
syntax keyword homescriptTodos TODO

" Match language specific keywords
syntax keyword homescriptKeywords
      \ if
      \ else
      \ on
      \ off

" Match all homescript number types
syntax match homescriptNumber "\v<\d+>"
syntax match homescriptNumber "\v<\d+\.\d+>"

" Match strings
syntax region homescriptString start=/"/ skip=/\\"/ end=/"/ oneline

highlight default link homescriptTodos Todo

highlight default link homescriptString String
highlight default link homescriptNumber Number

highlight default link homescriptKeywords Keyword
