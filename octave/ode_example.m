x0 = [ 1; 2 ];
t = linspace(0, 50, 200);

% "ode" defined in this directory
x = lsode("ode", x0, t);

plot(t, x);
