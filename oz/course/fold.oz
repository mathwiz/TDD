declare FoldL FoldR Map MapF Filter FilterF
fun {FoldL L F U}
   case L
   of nil then U
   [] H|T then {FoldL T F {F U H}}
   end
end
fun {FoldR L F U}
   fun {Loop L U}
      case L
      of nil then U
      [] H|T then {Loop T {F H U}}
      end
   end
in
   {Loop {Reverse L} U}
end
fun {MapF Xs F}
   {FoldR Xs fun {$ I A} {F I}|A end nil}
end
fun {Map Xs F}
   case Xs
   of nil then nil
   [] X|Xr then {F X}|{Map Xr F}
   end
end
fun {FilterF Xs F}
   {FoldR Xs fun {$ I A} if {F I} then I|A else A end end nil}
end
fun {Filter Xs F}
   case Xs
   of nil then nil
   [] X|Xr andthen {F X} then X|{Filter Xr F}
   [] X|Xr then {Filter Xr F}
   end
end

declare Succ
fun {Succ X}
   X + 1
end
declare Mult
fun {Mult X Y}
   X * Y
end
declare Cons
fun {Cons A B}
   A|B
end
declare Fix
fun {Fix A B}
   case A
   of H|T andthen H==1 then {Cons (H-100)|T A|B}
   else A|B
   end
end

{Browse {Cons 4 nil}}
{Browse {FoldL [1 2 3 4 5] Mult 1}}
{Browse {FoldR [1 2 3 4 5] Mult 1}}
{Browse {FoldR [nil [1] [2] [3] [1 2] [1 3] [2 3] [1 2 3]] Fix nil}}
{Browse {MapF [1 2 3 4 5] fun {$ I} I * I end}}
{Browse {FilterF [1 2 3 4 5] fun {$ I} I mod 2 \= 0 end}}
