if exists('b:current_syntax')
    finish
endif

"" Define all S-expression forms

syntax region sExpression start='(' end=')' transparent fold

syntax keyword secilKeyword block blockinherit in traverse
syntax keyword secilKeyword type typealias typeattribute typeattributetypes
syntax keyword secilKeyword typeabstract typeinherit
syntax keyword secilKeyword boolean booleanif tunable tunableif or and eq neq
syntax keyword secilKeyword category categoryorder categoryset
syntax keyword secilKeyword level defaultrange range
syntax keyword secilKeyword mls mlsconstrain
syntax keyword secilKeyword sensitivity sensitivityorder sensitivitycategory
syntax keyword secilKeyword user userrange userlevel userrole
syntax keyword secilKeyword sid sidcontext context filecon
syntax keyword secilKeyword allow allowx auditallow 
syntax keyword secilKeyword call

"" Match string literals in the case of e.g., a path to filecon

syntax region secilString start=/\v"/ skip=/\v\\./ end=/\v"/

"" Define constants such as true and false

syntax keyword secilConstant true false

"" Make a distinction between regular keywords and macro definitions

syntax keyword secilMacro macro

"" Match line comments

syntax match secilComment "^;.*$"

"" Set some common identifiers

syntax keyword secilIdentifier low high systemlow systemhigh
syntax keyword secilIdentifier h1 h2 l1 l2
syntax keyword secilIdentifier r1 r2 r3 t1 t2 t3 u1 u2 u3
syntax keyword secilIdentifier object_r

"" Add syntax highlighting for parenthesis

syntax match parens /[()]/

"" Group all secil tokens together

syntax cluster secilCluster contains=secilKeyword,secilString,secilConstant,secilMacro,secilComment

"" Create regions of nested parens for rainbow highlighting
"" taken from the lisp highlighting by (`locate syntax/lisip.vim`)

syntax region secilParen0 matchgroup=hlLevel0 start="(" end=")"  contains=@secilCluster,secilParen1
syntax region secilParen1 contained matchgroup=hlLevel1 start="(" end=")"  contains=@secilCluster,secilParen2
syntax region secilParen2 contained matchgroup=hlLevel2 start="(" end=")"  contains=@secilCluster,secilParen3
syntax region secilParen3 contained matchgroup=hlLevel3 start="(" end=")"  contains=@secilCluster,secilParen4
syntax region secilParen4 contained matchgroup=hlLevel4 start="(" end=")"  contains=@secilCluster,secilParen5
syntax region secilParen5 contained matchgroup=hlLevel5 start="(" end=")"  contains=@secilCluster,secilParen6
syntax region secilParen6 contained matchgroup=hlLevel6 start="(" end=")"  contains=@secilCluster,secilParen7
syntax region secilParen7 contained matchgroup=hlLevel7 start="(" end=")"  contains=@secilCluster,secilParen8
syntax region secilParen8 contained matchgroup=hlLevel8 start="(" end=")"  contains=@secilCluster,secilParen9
syntax region secilParen9 contained matchgroup=hlLevel9 start="(" end=")"  contains=@secilCluster,secilParen0

highlight link secilString String
highlight link secilComment Comment
highlight link secilKeyword Keyword
highlight link secilMacro Function
highlight link secilIdentifier Special

"" TODO: figure out a good neutral color scheme

if &bg == "dark"
    highlight def hlLevel0 ctermfg=brown        guifg=red
    highlight def hlLevel1 ctermfg=Darkblue      guifg=orange
    highlight def hlLevel2 ctermfg=darkyellow    guifg=yellow
    highlight def hlLevel3 ctermfg=darkgreen        guifg=greenyellow
    highlight def hlLevel4 ctermfg=darkcyan     guifg=green
    highlight def hlLevel5 ctermfg=red         guifg=springgreen1
    highlight def hlLevel6 ctermfg=darkmagenta      guifg=cyan1
    highlight def hlLevel7 ctermfg=brown       guifg=slateblue1
    highlight def hlLevel8 ctermfg=gray        guifg=magenta
    highlight def hlLevel9 ctermfg=black     guifg=purple
endif

syntax sync fromstart

let b:current_syntax = 'secil'
