function X = markov_transition(T, X0, n)
	X = zeros(rows(T),n);
	X(:,1) = X0;
	for j = 1:(n-1)
		X(:,j+1) = T * X(:,j);
	end;
	return;
endfunction