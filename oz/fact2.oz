% Principle of communicating vases
% n! = i! * a
%    = i * (i-1)! * a
%    = (i-1)! * (i*a)
% We have: i' = i-1 and a' = i * a
declare
fun {Fact2 I A}
   if I==0 then A
   else {Fact2 I-1 I*A} end
end

{Browse {Fact2 6 1}}