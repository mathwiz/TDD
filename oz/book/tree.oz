declare Lookup Insert Delete RemoveSmallest DFSAccLoop DFSAcc DFSAccLoop2 DFSAcc2 in
fun {Lookup X T}
   case T
   of leaf then notfound
   [] tree(key:Y value:V left:T1 right:T2) andthen X==Y then found(V)
   [] tree(key:Y value:V left:T1 right:T2) andthen X<Y then {Lookup X T1}
   [] tree(key:Y value:V left:T1 right:T2) andthen X>Y then {Lookup X T2}
   end
end
fun {Insert X V T}
   case T
   of leaf then tree(key:X value:V left:leaf right:leaf)
   [] tree(key:Y value:W left:T1 right:T2) andthen X==Y then tree(key:Y value:W left:T1 right:T2)
   [] tree(key:Y value:W left:T1 right:T2) andthen X<Y then tree(key:Y value:W left:{Insert X V T1} right:T2)
   [] tree(key:Y value:W left:T1 right:T2) andthen X>Y then tree(key:Y value:W left:T1 right:{Insert X V T2})
   end
end
fun {RemoveSmallest T}
   case T
   of leaf then none
   [] tree(Y V T1 T2) then
      case {RemoveSmallest T1}
      of none then Y#V#T2
      [] Yp#Vp#Tp then Yp#Vp#tree(Y V Tp T2)
      end
   end
end
fun {Delete X T}
   case T
   of leaf then leaf
   [] tree(Y W T1 T2) andthen X==Y then
      case {RemoveSmallest T2}
      of none then T1
      [] Yp#Vp#Tp then tree(Yp Vp T1 Tp)
      end
   [] tree(Y W T1 T2) andthen X<Y then
      tree(Y W {Delete X T1} T2)
   [] tree(Y W T1 T2) andthen X>Y then
      tree(Y W T1 {Delete X T2})
   end
end
proc {DFSAccLoop T S1 ?Sn}
   case T
   of leaf then Sn=S1
   [] tree(Key Val L R) then S2 S3 in
      S2=Key#Val|S1
      {DFSAccLoop L S2 S3}
      {DFSAccLoop R S3 Sn}
   end
end
fun {DFSAcc T}
   {Reverse {DFSAccLoop T nil $}}
end
proc {DFSAccLoop2 T ?S1 Sn}
   case T
   of leaf then S1=Sn
   [] tree(Key Val L R) then S2 S3 in
      S1=Key#Val|S2
      {DFSAccLoop2 L S2 S3}
      {DFSAccLoop2 R S3 Sn}
   end
end
fun {DFSAcc2 T}
   {Reverse {DFSAccLoop2 T $ nil}}
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

declare
X=tree(key:horse value:cheval
       left:tree(key:dog value:chien
		 left:tree(key:cat value:chat left:leaf right:leaf)
		 right:tree(key:elephant value:elephant left:leaf right:leaf))
       right:tree(key:mouse value:souris
		  left:tree(key:monkey value:singe left:leaf right:leaf)
		  right:tree(key:tiger value:tigre left:leaf right:leaf))
      )
Y=tree(key:otter value:nasty left:leaf right:leaf)
{Browse {Lookup mouse X}}
{Browse Y}
{Browse {Insert rabbit bunny Y}} 