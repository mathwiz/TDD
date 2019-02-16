function retval = euler_sum (r, x, lx, mx)
  Rx = exp(-x*r) .* lx .* mx;
  retval = sum(Rx)
endfunction