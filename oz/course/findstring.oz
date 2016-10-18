declare Prefix FindString in
fun {Prefix L1 L2}
   case L1
   of nil then true
   [] H|T then if H==L2.1 then {Prefix T L2.2} else false end
   end
end
fun {FindString L1 L2}
   case L2
   of nil then L1==nil
   [] H|T then
      if {Prefix L1 L2} then true
      else {FindString L1 T} end
   end
end

{Browse {FindString [0 1] [1]}}
{Browse {FindString [1 3] [1 2 3 4]}}
{Browse {FindString [1 2] [0 1 2 3]}}
