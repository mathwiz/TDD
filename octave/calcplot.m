% example
% f = @(x) x .* sin(1 ./ x);
% calcplot(-.01, .01, f);

function RETVAL = calcplot(min, max, func)
  x = linspace(min, max, 500);
  y = func(x);
  RETVAL = plot(x, y);
endfunction
