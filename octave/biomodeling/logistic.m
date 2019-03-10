n = 30;
p0 = 200;
a = 1.4;
b = 0.0002;

[years, pop] = logistic_difference(n, p0, a, b);

plot(years, pop, 'k.', years, pop, 'k');
xlabel('Time (years)');
ylabel('Population P(n)');
