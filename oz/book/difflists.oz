declare
fun {AppendD D1 D2}
   S1#E1=D1
   S2#E2=D2
in
   E1=S2
   S1#E2
end

local X Y in
   {Browse {AppendD (1|2|3|X)#X (4|5|Y)#Y}}
end
