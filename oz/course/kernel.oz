declare Add
fun {Add N}
   if N == 0 then 0
   else N+{Add N-1}
   end
end

declare ProcAdd
proc {ProcAdd N R}
   if N == 0 then R = 0
   else R = N + {ProcAdd N-1}
   end
end

{Browse {Add 4}}
{Browse {ProcAdd 4}}