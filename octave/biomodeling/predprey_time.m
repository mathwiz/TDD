[T, R, F] = predprey(0.04, 0.0004, 0.08, 0.0002, 500, 120, 600);

plot(T, R, 'k.', T, F, 'ko');
xlabel('Time');
ylabel('Population');
legend('Prey', 'Predator');