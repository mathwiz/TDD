function logistic_plot(n, p0, a, b)
  [years, pop] = logistic_difference(n, p0, a, b);

  plot(years, pop, 'k.', years, pop, 'k');
  xlabel('Time (years)');
  ylabel('Population P(n)');
endfunction