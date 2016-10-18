declare
fun {FlattenList L}
   local AppendLists in
      fun {AppendLists L1 L2}
	 case L1
	 of nil then L2
	 [] H|T then H|{AppendLists T L2}
	 end
      end
      case L
      of nil then nil
      [] H|T then {AppendLists {FlattenList H} {FlattenList T}}
      [] E then [E]
      end
   end
end

{Browse {FlattenList [[1] 2 [3 4] [5 [6]]]}}
{Browse {FlattenList [[0 0] 1]}}
{Browse {FlattenList [1]}}
