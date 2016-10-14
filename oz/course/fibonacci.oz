declare FibNaive Fib
fun {FibNaive N}
   if N==0 then 0
   elseif {Or N==1 N==2} then 1
   else {FibNaive N-2} + {FibNaive N-1} end
end

fun {Fib N}
   local FibAux in
      fun {FibAux N Acc1 Acc2}
	 if N==0 then Acc1
	 elseif N==1 then Acc2
	 else {FibAux N-1 Acc2 Acc1+Acc2}
	 end
      end
      {FibAux N 0 1}
   end
end

{Browse {FibNaive 0}}
{Browse {FibNaive 7}}