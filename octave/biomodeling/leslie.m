function [T P Props] = leslie(L, X0, n)
	T = 0:n;
	P = [X0];
	Props = [X0/sum(X0)];
	for k = 1:n
		X = L*P(:,k);
		P = [P X];
		Props =[Props X/sum(X)];
	end
endfunction	