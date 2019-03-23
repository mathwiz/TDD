X0 = [20; 10; 2];
L = [0 6 10/3; 0.6 0 0; 0 0.4 0];
n = 8;

[T P Props] = leslie(L, X0, n);

plot(T, P(1,:), 'ko', T, P(2,:), 'k*', T, P(3,:), 'k.');
hold on;
plot(T, P(1,:), 'k', T, P(2,:), 'k', T, P(3,:), 'k');
xlabel('Time');
ylabel('Number of age class');
hold off;