function! TestExpr(expr)
  return string(g:viml#parser.GetSym('expr1').match(a:expr)['is_matched'])
endfunction
