declare Split Reduction
proc {Split L L1 L2}
   case L
   of nil then L1=nil L2=nil
   [] [A] then L1=[A] L2=nil
   [] A|B|T then L1T L2T in
      L1=A|L1T
      L2=B|L2T
      {Split T L1T L2T}
   end
end

fun {Reduction L A B C D}
   case L
   of nil then 0
   [] Z|nil then A*Z
   [] Y|Z|nil then A*Y+B*Z
   [] X|Y|Z|nil then A*X+B*Y+C*Z
   [] V|X|Y|Z|nil then A*V+B*X+C*Y+D*Z
   [] V|X|Y|Z|R then A*V+B*X+C*Y+D*Z+{Reduction R A B C D}
   end
end

declare L1 L2 A G H I J K in
{Browse {Split [1 2 3 4 5] L2}}
A=[1 2 3 4 5 6 7 8 9 10]
G=1
H=1
I=1
J=1
{Browse {Reduction [1 2 3 4 5 6] G H I J}}
