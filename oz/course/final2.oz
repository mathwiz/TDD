declare
fun {Snake F N X}
   if N==0 then {F X}
   else {Snake fun {$ X} {Snake F N-1 X} end N-1 X} end
end
{Browse {Snake fun {$ X} X+1 end 2 2}}
{Browse {Snake fun {$ X} X+1 end 10 5}}

declare A B C T
T=tree(key:A
       left:tree(key:B left:leaf right:leaf)
       right:tree(key:C left:leaf right:leaf)
       )

