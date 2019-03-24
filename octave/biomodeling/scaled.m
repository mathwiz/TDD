n = 30;
p0 = 0.2;
lambda = 2.99;


[years, pop] = logistic_scaled(n, p0, lambda);

plot(years, pop, 'k.', years, pop, 'k');
xlabel('Time (years)');
ylabel('Population scaled by L');
