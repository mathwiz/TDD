declare Add
fun {Add N}
   if N == 0 then 0
   else N+{Add N-1}
   end
end

declare ProcAdd
proc {ProcAdd N R}
   if N == 0 then R = 0
   else
      local I1 in
	 local N1 in
	    local R1 in
	       N1 = N - 1
	       {ProcAdd N1 I1}
	       R = N + I1
	    end
	 end
      end
   end
end

{Browse {Add 4}}
{Browse {ProcAdd 4}}
