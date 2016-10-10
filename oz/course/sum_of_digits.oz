% S = (dddd)
% A = d + d + d + d
declare
fun {SumDigits2 S A}
   if S==0 then A
   else {SumDigits2 (S div 10) A+(S mod 10)}
   end
end

{Browse {SumDigits2 9870 0}}
