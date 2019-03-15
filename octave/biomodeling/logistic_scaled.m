function [ns, ps] = logistic_scaled(n, p0, lambda)
  ns = 0:n;
  ps = zeros(1, n+1);
  ps(1) = p0;
  for k = 1:n
    ps(k+1) = lambda * ps(k) * (1 - ps(k));
  end;
endfunction
