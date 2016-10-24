declare Lookup Insert in
fun {Lookup X T}
   case T
   of leaf then notfound
   [] tree(Y V T1 T2) andthen X==Y then found(V)
   [] tree(Y V T1 T2) andthen X<Y then {Lookup X T1}
   [] tree(Y V T1 T2) andthen X>Y then {Lookup X T2}
   end
end
fun {Insert X V T}
   case T
   of leaf then tree(X V leaf leaf)
   [] tree(Y W T1 T2) andthen X==Y then tree(X V T1 T2)
   [] tree(Y W T1 T2) andthen X<Y then tree(Y W {Insert X V T1} T2)
   [] tree(Y W T1 T2) andthen X>Y then tree(Y W T1 {Insert X V T2})
   end
end

declare T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 in
T1={Insert 100 onezerozero leaf}
{Browse T1}
T2={Insert 99 ninenine leaf}
{Browse T2}
T3={Insert 300 threezerozero T1}
{Browse T3}
T4={Insert 10 onezero T2}
{Browse T4}
T5={Insert 5 five T3}
{Browse T5}
T6={Insert 6 six T4}
{Browse T6}
T7={Insert 7 seven T6}
{Browse T7}