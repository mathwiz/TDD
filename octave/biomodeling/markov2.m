disp('Markov Processes');

N = 100;
T = [0.94 0.02; 0.06 0.98];
X0 = [0.5; 0.5];
X = markov_transition(T, X0, N);
plot(1:N, X(1,:), 'k.', 1:N, X(2,:), 'k*');
xlabel('Time n in years');
ylabel('City pop x(n) and Suburb pop y(n)');
legend('City population', 'Suburb population')
disp('plot finished');