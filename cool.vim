" cool.vim - Syntax highlighting for .cl files

" Define the filetype
if exists("b:current_syntax")
  finish
endif
" Keyword highlighting (only 'class' in this example)
syn keyword coolKeyword inherits new class
syn keyword coolConditional if then else fi case esac of
syn keyword coolRepeat while loop pool
syn keyword coolBoolean true false
syn keyword coolType Object IO Int String Bool
syn keyword coolGlobal self let in
syn keyword coolOperator isvoid not

syn match       coolType ":\s*\u\w*"

" anything after class is a type
syn match       coolType "\(\<class\s\+\)\@<=\u\w*"

" anything after inherits is a type
syn match       coolType  "\(\<inherits\s\+\)\@<=\u\w*"

" anything after new is a type
syn match       coolType  "\(\<new\s\+\)\@<=\u\w*"

syn match Function "\k\+\%(\s*(\)\@="

" C style integers ripped from c.vim
syn match       coolNumbers        display transparent "\<\d\|\.\d" contains=coolNumber
syn match       coolNumber         display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"

" Highlight strings
syn match coolString /".*"/
syn match coolComment "\v--.*$"
syn region coolComment	       start="(\*"  end="\*)"

" Define highlight groups (adjust these colors as you like)
hi def link coolType Type
hi def link coolKeyword Keyword
hi def link coolString String
hi def link coolConditional Conditional
hi def link coolComment Comment
hi def link coolRepeat Repeat
hi def link coolBoolean Boolean
hi def link coolOperator Keyword
hi def link coolMultiLineComment Comment
hi def link coolGlobal Keyword
hi def link coolNumber Number
hi def link coolNumbers Number
hi def link coolFunction Function
" Set the syntax
let b:current_syntax = "cool"
