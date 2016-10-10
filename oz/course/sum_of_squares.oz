% Sum of squares of N
declare
fun {MainSum N}
   local Sum in
      fun {Sum N Acc}
	 if N==0 then Acc
	 else {Sum N-1 Acc+N*N} end
      end
      {Sum N 0}
   end
end

{Browse {MainSum 3}}
{Browse {MainSum 4}}