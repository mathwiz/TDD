[T, X] = delay_logistic(30, .1, 2.271, 1);

plot(T, X, 'k.', T, X, 'k');
xlabel('Iteration');
ylabel('Value');
