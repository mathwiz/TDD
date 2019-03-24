function [T S I] = sir(i_rate, r_rate, I0, N, t)
	% T vector of time
	% i_rate infection rate
	% r_rate recovery rate
	% I0 initial number infected
	% N total size of population
	% t time
	% S susceptible population
	% I infected population
	T = 1:t;
	S = zeros(1,t);
	I = zeros(1,t);
	S(1) = N - I0;
	I(1) = I0;
	for k = 2:t
		S(k) = S(k-1) - i_rate*S(k-1)*I(k-1) + r_rate*I(k-1);
		I(k) = I(k-1) + i_rate*S(k-1)*I(k-1) - r_rate*I(k-1);
	end;
endfunction