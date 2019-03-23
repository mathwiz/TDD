X0 = [20; 10; 2];
L = [0 6 10/3; 0.6 0 0; 0 0.4 0];
n = 50;

[T P Props] = leslie(L, X0, n);

plot(T, Props(1,:), 'k.', T, Props(2,:), 'k*', T, Props(3,:), 'ko');
hold on;
plot(T, Props(1,:), 'k', T, Props(2,:), 'k', T, Props(3,:), 'k');
xlabel('Time');
ylabel('Proportion of age class');
legend('Class 1', 'Class 2', 'Class 3');
hold off;