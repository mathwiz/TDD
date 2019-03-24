function [T X] = delay_logistic(n, x0, b, delay)
  T = 1:n;
  X = zeros(1, n);
  X(1) = x0;
  for k = 1:(n-1)
  	if (k>delay)
  		xdelelayed = 1 - X(k-delay);
  	else
  		xdelelayed = 1;
  	endif;
    X(k+1) = b * X(k) * xdelelayed;
  end;
endfunction
