declare IsBalanced NumLeaves in
fun {NumLeaves Tree}
   case Tree
   of leaf then 1
   [] btree(left:L right:R) then {NumLeaves L} + {NumLeaves R}
   end
end
fun {IsBalanced Tree}
   case Tree
   of leaf then true
   [] btree(left:L right:R) andthen {NumLeaves L}=={NumLeaves R} then
      {And {IsBalanced L} {IsBalanced R}}
   [] btree(left:L right:R) andthen {NumLeaves L}-{NumLeaves R}==1 then
      {And {IsBalanced L} {IsBalanced R}}
   [] btree(left:L right:R) andthen {NumLeaves R}-{NumLeaves L}==1 then
      {And {IsBalanced L} {IsBalanced R}}
   else false
   end
end

declare X Y Z in
X=btree(
     left:btree(
	     left:btree(left:leaf right:leaf)
	     right:btree(left:leaf right:leaf))
     right:btree(
	      left:btree(left:leaf right:leaf)
	      right:btree(left:leaf right:leaf))
     )
Y=btree(
     left:btree(
	     left:btree(left:leaf right:leaf)
	     right:leaf)
     right:leaf)
Z=btree(
     left:btree(left:leaf right:leaf)
     right:btree(left:leaf right:leaf)
     )

{Browse {NumLeaves X}}
{Browse {IsBalanced X}}