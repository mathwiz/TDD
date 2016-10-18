declare
fun {Flatten L}
   local FlattenAux in
   fun {FlattenAux L R Acc}
      if L==nil then Acc
      else
	 case L of H|T then
	    {FlattenAux H T|R Acc}
	 else
	    {FlattenAux R nil L|Acc}   
	 end
      end
   end
   {FlattenAux L nil nil}
   end
end

{Browse {Flatten [[1] 2 [3 4] [5 [6]]]}}
{Browse {Flatten [[0 0] 1]}}
{Browse {Flatten [1]}}
{Browse nil|[1 2]}