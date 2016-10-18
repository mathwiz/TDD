declare
fun {Fact1 N}
   if N==1 then [1]
   else {Fact1 N-1}.1 * N | {Fact1 N-1}
   end
end

{Browse {Fact1 5}}

declare
fun {Fact2 N}
   local FactAux Rev in
      fun {FactAux X Acc Acc2}
	 if X==N then Acc
	 else {FactAux X+1 (X+1)*Acc.1|Acc Acc2*(X+1)}
	 end
      end
      fun {Rev L Acc}
	 if L==nil then
	    Acc
	 else
	    {Rev L.2 L.1|Acc}
	 end
      end      
      {Rev {FactAux 1 [1] 1} nil}
   end
end

{Browse {Fact2 5}}

declare
fun {Fact N}
   local FactAux Rev in
      fun {FactAux X Acc}
	 if X==N then Acc
	 else {FactAux X+1 (X+1)*Acc.1|Acc}
	 end
      end
      fun {Rev L Acc}
	 if L==nil then
	    Acc
	 else
	    {Rev L.2 L.1|Acc}
	 end
      end      
      {Rev {FactAux 1 [1]} nil}
   end
end

{Browse {Fact 5}}
