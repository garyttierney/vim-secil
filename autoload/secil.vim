"" Jump to the curret namespace (i.e., the current block you are `in`)

function secil#GoToCurrentNamespace()
    execute "normal /\s*(\s*in/e+1\<CR>"
    execute "normal w2"
    execute "silent grep -R " . shellescape("block <cWORD>") . " ./**/*.cil"
    execute "redraw!"
endfunction
