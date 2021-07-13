hi! LambdaFunction guifg=#acbac9 guibg=NONE gui=bold ctermfg=236 ctermbg=NONE cterm=bold

let g:lambda_hi_group = get(g:, "vimlambdify_lambda_hi_group", "LambdaFunction")

function! vimlambdify#lambdify(highlight_group, klass, keyword)
    " Conceal feature required to continue (vim ≥ 7.3)
    if !has('conceal')
        finish
    endif

    " Conceal 'function' with a lambda character
    execute "syntax keyword"." ".a:klass." ".a:keyword." "."conceal cchar=λ"

    " Link up syntax
    execute "hi link" a:klass a:highlight_group
    execute "hi! link Conceal " a:highlight_group

    " Set conceallevel/cursor
    setlocal conceallevel=1
    setlocal concealcursor=c
endf


function! vimlambdify#lambdify_match(highlight_group, klass, pattern, ...)
    " Conceal feature required to continue (vim ≥ 7.3)
    if !has('conceal')
        finish
    endif

    let options = get(a:, 1, "")

    " Conceal 'function' with a lambda character
    execute "syntax match"." ".a:klass." ".a:pattern." ".options." "."conceal cchar=λ"

    " Link up syntax
    execute "hi link" a:klass a:highlight_group
    execute "hi! link Conceal " a:highlight_group

    " Set conceallevel/cursor
    setlocal conceallevel=1
    setlocal concealcursor=c
endf
