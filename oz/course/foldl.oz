declare FoldL
fun {FoldL L F U}
   case L
   of nil then U
   [] H|T then {FoldL T F {F U H}}
   end
end

declare Mult
fun {Mult X Y}
   X * Y
end

{Browse {Mult 4 5}}
{Browse {FoldL [1 2 3 4 5] Mult 1}}
