% example
% f = @(x) x .* sin(1 ./ x);
% funcplot(-.01, .01, f);

function RETVAL = funcplot(min, max, func)
  RETVAL = fplot(func, [min, max], 501);
endfunction
