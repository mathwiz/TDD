declare
fun {AppendList L1 L2}
   case L1 of H1|T1 then
      H1|{AppendList T1 L2}
   else L2
   end
end

{Browse {AppendList [1 3 [8 9]] [4 5 6]}}
{Browse nil}