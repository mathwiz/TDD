declare Pascal AddList ShiftLeft ShiftRight
fun {Pascal N}
   if N==1 then [1]
   else
      {AddList {ShiftLeft {Pascal N-1}} {ShiftRight {Pascal N-1}}}
   end
end

fun {ShiftLeft L}
   case L of H|T then
      H|{ShiftLeft T}
   else [0]
   end
end

fun {ShiftRight L} 0|L end

fun {AddList L1 L2}
   case L1 of H1|T1 then
      case L2 of H2|T2 then
	 H1 + H2 | {AddList T1 T2}
      end
   else nil end
end

{Browse {Pascal 1}}

declare
fun {FastPascal N}
   if N==1 then [1]
   else L in
      L = {FastPascal N-1}
      {AddList {ShiftLeft L} {ShiftRight L}}
   end
end

{Browse {FastPascal 6}}
{Browse {FastPascal 30}}

declare
fun lazy {PascalList Row}
   Row | {PascalList {AddList {ShiftLeft Row} {ShiftRight Row}}}
end

declare
L={PascalList [1]}
{Browse L}
{Browse L.1}
{Browse L.2.1}

declare
fun {PascalList2 N Row}
   if N==1 then [Row]
   else
      Row | {PascalList2 N-1 {AddList {ShiftLeft Row} {ShiftRight Row}}}
   end
end

{Browse {PascalList2 10 [1]}}

declare OpList GenericPascal Add Xor
fun {OpList Op L1 L2}
   case L1 of H1|T1 then
      case L2 of H2|T2 then
	 {Op H1 H2} | {OpList Op T1 T2}
      end
   else nil end
end

fun {GenericPascal Op N}
   if N==1 then [1]
   else L in
      L = {GenericPascal Op N-1}
      {OpList Op {ShiftLeft L} {ShiftRight L}}
   end
end

fun {Add A B} A+B end
fun {Xor A B} if A==B then 0 else 1 end end

{Browse {GenericPascal Add 5}}
{Browse {GenericPascal Xor 5}}