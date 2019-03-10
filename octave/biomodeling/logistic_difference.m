function [ns, ps] = logistic_difference(n, p0, a, b)
  ns = 0:n;
  ps = zeros(1, n+1);
  ps(1) = p0;
  for k = 1:n
    ps(k+1) = a*ps(k) - b*ps(k)^2;
  end;
endfunction
