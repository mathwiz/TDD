function Test
  foo(0)
  foo(1)
  foo(2)
endfunction

function VAL = foo(n)
  if n > 0
    VAL = n^2;
  else
    VAL = 100;
  endif
endfunction
