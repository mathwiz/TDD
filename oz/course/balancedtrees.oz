declare IsBalanced NumLeaves in
fun {NumLeaves Tree}
   case Tree
   of leaf then 1
   [] btree(V left:L right:R) then {NumLeaves L} + {NumLeaves R}
   end
end
fun {IsBalanced Tree}
   case Tree
   of leaf then true
   [] btree(V left:L right:R) andthen {NumLeaves L}=={NumLeaves R} then
      {And {IsBalanced L} {IsBalanced R}}
   [] btree(V left:L right:R) andthen {NumLeaves L}-{NumLeaves R}==1 then
      {And {IsBalanced L} {IsBalanced R}}
   [] btree(V left:L right:R) andthen {NumLeaves R}-{NumLeaves L}==1 then
      {And {IsBalanced L} {IsBalanced R}}
   else false
   end
end

declare X Y Z in
X=leaf
Y=btree(
     42
     left:btree(
	     14
	     left:btree(24 left:leaf right:leaf)
	     right:leaf)
     right:leaf)
Z=btree(
     2
     left:btree(1 left:leaf right:leaf)
     right:btree(3 left:leaf right:leaf)
     )

{Browse {NumLeaves Z}}
{Browse {IsBalanced Z}}