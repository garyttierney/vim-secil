if exists('b:current_syntax')
    finish
endif

"" Define all S-expression forms

syntax keyword secilKeyword block blockinherit in traverse
syntax keyword secilKeyword type typealias typeattribute typeattributetypes
syntax keyword secilKeyword typeabstract typeinherit
syntax keyword secilKeyword boolean booleanif
syntax keyword secilKeyword category categoryset
syntax keyword secilKeyword sensitivity sensitivityorder sensitivitycategory
syntax keyword secilKeyword user userrange userlevel userrole

"" Make a distinction between regular keywords and macro definitions

syntax keyword secilMacro macro

"" Match line comments
syntax match secilComment "^;.*$"

highlight link secilComment Comment
highlight link secilKeyword Keyword
highlight link secilMacro Function

let b:current_syntax = 'secil'
