disp('Markov Processes');

[T X, Y] = markov_2s(0.94, 0.02, 0.06, 0.98, 3, 1, 100);
plot(T, X, 'k.', T, Y, 'k*');
xlabel('Time n in years');
ylabel('City pop x(n) and Suburb pop y(n)');
legend('City population', 'Suburb population')
disp('plot finished');