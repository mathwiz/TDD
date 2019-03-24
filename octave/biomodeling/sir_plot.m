[T S I R] = sir(0.005, 0.1, 1, 100, 50);

plot(T, S, 'k.', T, I, 'ko', T, R, 'k*');
hold on;
plot(T, S, 'k', T, I, 'k', T, R, 'k');
xlabel('Time');
ylabel('Population');
legend('Susceptible', 'Infected', 'Recovered');
hold off;