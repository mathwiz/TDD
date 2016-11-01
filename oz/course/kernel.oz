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
	 I1 = {ProcAdd N-1}
	 R = N + I1
      end
   end
end

{Browse {Add 4}}
{Browse {ProcAdd 4}}
{Show {Add 4}}