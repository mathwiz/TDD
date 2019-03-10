% Model drug in blood
% 20% removed every 4h
% Initial dose d(0) = 140 mg
% 20 mg added every 4h
% Model for 30 hours

h = 30
t = 0:h;
d = zeros(1, h+1);
d(1) = 140;

for k = 1:h
  d(k+1) = 0.8*d(k) + 20;
end;

plot(t, d, 'k.', t, d, 'k');
xlabel('Time n in 4h units');
ylabel('Amount of drug (mg)');
