function X = markov_transition(T, X0, n)
	X = X0;
	for j = 1:(n-1)
		X = [X (T * X(:,j))];
	end;
	return;
endfunction