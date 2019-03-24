[T, X] = delay_logistic(50, .2, 2.1, 1);

plot(T, X, 'k.', T, X, 'k');
xlabel('Iteration');
ylabel('Value');
