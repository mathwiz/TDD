[T S I] = sis(0.005, 0.1, 1, 100, 50);

plot(T, S, 'k.', T, I, 'ko');
hold on;
plot(T, S, 'k', T, I, 'k');
xlabel('Time');
ylabel('Population');
legend('Susceptible', 'Infected');
hold off;