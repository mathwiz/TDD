{Browse {Not true}}
{Browse {Or false false}}
{Browse 5 mod 2 == 0}

declare
fun {Prime N}
   local DoPrime in 
      fun {DoPrime N F}
	 if N==F then true
	 elseif N mod F == 0 then false
	 else {DoPrime N F+1}
	 end
      end
      {DoPrime N 2}
   end
end

{Browse {Prime 11}}