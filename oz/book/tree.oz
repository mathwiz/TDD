declare Lookup Insert Delete RemoveSmallest DFSAccLoop DFSAcc DFSAccLoop2 DFSAcc2 BFSAcc in
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
   of leaf then
      tree(key:X value:V left:leaf right:leaf)
   [] tree(key:Y value:W left:T1 right:T2) andthen X==Y then
      tree(key:Y value:W left:T1 right:T2)
   [] tree(key:Y value:W left:T1 right:T2) andthen X<Y then
      tree(key:Y value:W left:{Insert X V T1} right:T2)
   [] tree(key:Y value:W left:T1 right:T2) andthen X>Y then
      tree(key:Y value:W left:T1 right:{Insert X V T2})
   end
end
fun {RemoveSmallest T}
   case T
   of leaf then none
   [] tree(key:Y value:V left:T1 right:T2) then
      case {RemoveSmallest T1}
      of none then Y#V#T2
      [] Yp#Vp#Tp then Yp#Vp#tree(key:Y value:V left:Tp right:T2)
      end
   end
end
fun {Delete X T}
   case T
   of leaf then leaf
   [] tree(key:Y value:W left:T1 right:T2) andthen X==Y then
      case {RemoveSmallest T2}
      of none then T1
      [] Yp#Vp#Tp then tree(key:Yp value:Vp left:T1 right:Tp)
      end
   [] tree(key:Y value:W left:T1 right:T2) andthen X<Y then
      tree(key:Y value:W left:{Delete X T1} right:T2)
   [] tree(key:Y value:W left:T1 right:T2) andthen X>Y then
      tree(key:Y value:W left:T1 right:{Delete X T2})
   end
end
proc {DFSAccLoop T S1 ?Sn}
   case T
   of leaf then Sn=S1
   [] tree(key:Key value:Val left:L right:R) then S2 S3 in
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
   [] tree(key:Key value:Val left:L right:R) then S2 S3 in
      S1=Key#Val|S2
      {DFSAccLoop2 L S2 S3}
      {DFSAccLoop2 R S3 Sn}
   end
end
fun {DFSAcc2 T}
   {Reverse {DFSAccLoop2 T $ nil}}
end
fun {BFSAcc T}
   fun {NewQueue} q(nil nil) end
   fun {CheckQueue Q}
      case Q of q(nil R) then q({Reverse R} nil) else Q end
   end
   fun {QInsert Q X}
      case Q of q(F R) then {CheckQueue q(F X|R)} end
   end
   fun {QDelete Q X}
      case Q of q(F R) then F1 in F=X|F1 {CheckQueue q(F1 R)} end
   end
   fun {QIsEmpty Q}
      case Q of q(F R) then F==nil end
   end
   fun {TreeInsert Q T}
      if T\=leaf then {QInsert Q T} else Q end
   end
   proc {BFSQueue Q1 ?S1 Sn}
      if {QIsEmpty Q1} then S1=Sn
      else X Q2 Key Val L R S2 in
	 Q2={QDelete Q1 X}
	 tree(key:Key value:Val left:L right:R)=X
	 S1=Key#Val|S2
	 {BFSQueue {TreeInsert {TreeInsert Q2 L} R} S2 Sn}
      end
   end
in
   {BFSQueue {TreeInsert {NewQueue} T} $ nil}
end


declare T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 in
T1=tree(key:100 value:onezerozero left:leaf right:leaf)
{Browse T1}
{Browse T2}
{Browse T3}
{Browse T4}
{Browse T5}
{Browse T6}
{Browse T7}
{Browse T8}
{Browse T9}
{Browse T10}

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
{Browse {Delete horse X}}