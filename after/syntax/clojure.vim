call vimlambdify#lambdify(g:lambda_hi_group, "clojureFnSpecialForm", "fn")
call vimlambdify#lambdify(g:lambda_hi_group, "clojureDefnMacro", "defn")
call vimlambdify#lambdify_match(g:lambda_hi_group, "clojureAnonymousFunctionLiteral", "/#\\((\\)\\@=/")
