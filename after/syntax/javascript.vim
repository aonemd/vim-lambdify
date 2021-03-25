call vimlambdify#lambdify("Operator", "jsFunction", "function")
call vimlambdify#lambdify_match("Operator", "jsArrowFunction", "\"=>\"", "skipwhite skipempty nextgroup=jsFuncBlock,jsCommentFunction")
