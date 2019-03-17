function [T, X, Y] = markov_2s(a, b, c, d, x0, y0, n)
	T = 0:n;
	X(1) = x0;
	Y(1) = y0;
	for j = 1:n
		X(j+1) = a*X(j) + b*Y(j);
		Y(j+1) = c*X(j) + d*Y(j);
	end;
	return;
endfunction