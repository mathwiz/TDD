% Markov transiction to equilibrium
% Simulated random movement between 3 rooms
% Room 1 has 2 doors to Room 2 and 1 door to Room 3
% Room 2 has 2 doors to each of Rooms 1 and 3
% Room 3 has 2 doors to Room 2 and 1 door to Room 1
% The transitions are FROM C TO R in T

N = 18;
T = [0 1/2 1/3; 2/3 0 2/3; 1/3 1/2 0]
X0 = [.5; .2; .3]
X = markov_transition(T, X0, N);
X(:,max(1, N-5):N)

plot(1:N, X(1,:), 'g', 1:N, X(2,:), 'r', 1:N, X(3,:), 'b');
xlabel('Time n in steps');
ylabel('Proportion in Room x(n)');
legend('Room 1', 'Room 2', 'Room 3')
disp('plot finished');
