if exists('b:current_syntax')
    finish
endif

"" Define all S-expression forms

syntax region sExpression start='(' end=')' transparent fold

syntax keyword secilKeyword block blockinherit in traverse
syntax keyword secilKeyword type typealias typeattribute typeattributetypes
syntax keyword secilKeyword typeabstract typeinherit
syntax keyword secilKeyword boolean booleanif tunable tunableif or and eq
syntax keyword secilKeyword category categoryset
syntax keyword secilKeyword mls mlsconstrain
syntax keyword secilKeyword sensitivity sensitivityorder sensitivitycategory
syntax keyword secilKeyword user userrange userlevel userrole

"" Define constants such as true and false

syntax keyword secilConstant true false

"" Make a distinction between regular keywords and macro definitions

syntax keyword secilMacro macro

"" Match line comments
syntax match secilComment "^;.*$"

highlight link secilConstant Constant
highlight link secilComment Comment
highlight link secilKeyword Keyword
highlight link secilMacro Function

let b:current_syntax = 'secil'
