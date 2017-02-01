" Syntax highlighting for *.questions files
syntax keyword questionKeyword question
syntax keyword answerKeyword answer
syntax keyword startKeyword start
syntax keyword endKeyword end

hi def link questionKeyword Type
hi def link answerKeyword Statement
hi def link startKeyword Comment
hi def link endKeyword Comment
