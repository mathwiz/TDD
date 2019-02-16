n= 105;

Sx= zeros(1,n+1);
lx= ones(1,n+1);
mx= zeros(1,n+1);
Rx = zeros(1,n+1);

Sx(1) = 0.23;
Sx(2) = 0.47;
Sx(3) = 0.81;
Sx(4) = 0.65;
Sx(5) = 0.65;
Sx(6) = 0.75;
Sx(7) = 0.74;
Sx(8) = 0.81;
Sx(9) = 0.77;
Sx(10) = 0.80;
Sx(11) = 0.82;
Sx(12) = 0.82;
Sx(13) = 0.82;
Sx(14:n+1) = 0.93;


mx(12) = 4;
mx(13) = 6;
mx(14) = 8;
mx(15) = 10;
mx(16:n+1) = 12;


for x=1:n
  lx(x+1) = lx(x) * Sx(x);
  Rx(x) = exp(-x) * lx(x) * mx(x);
endfor



Sx(1:16)
mx(1:16)
lx(1:9)
lx(100:n+1)
Rx(1:16)
