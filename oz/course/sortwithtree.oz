declare FromListToTree FromTreeToList in
fun {FromListToTree L}
   local InsertAux Accumulate in
      fun {InsertAux V T}
	 case T
	 of leaf then
	    btree(1:V left:leaf right:leaf)
	 [] btree(1:W left:L right:R) andthen V==W then
	    btree(1:V left:L right:R)
	 [] btree(1:W left:L right:R) andthen V<W then
	    btree(1:W left:{InsertAux V L} right:R)
	 [] btree(1:W left:L right:R) andthen V>W then
	    btree(1:W left:L right:{InsertAux V R})
	 end
      end
      fun {Accumulate Tree List}
	 case List
	 of nil then Tree
	 [] Head|Tail then {Accumulate {InsertAux Head Tree} Tail}
	 end
      end
      {Accumulate leaf L} 
   end
end
fun {FromTreeToList T}
   case T
   of leaf then nil
   [] btree(1:V left:L right:R) then {Append {FromTreeToList L} V|{FromTreeToList R}}
   end
end

declare X Y Z in
X=btree(
     1:4
     left:btree(
	     1:2
	     left:btree(1:1 left:leaf right:leaf)
	     right:btree(1:3 left:leaf right:leaf))
     right:btree(
	      1:8
	      left:btree(1:6 left:leaf right:leaf)
	      right:btree(1:9 left:leaf right:leaf))
     )
Y=btree(
     1:42
     left:btree(
	     1:24
	     left:btree(1:12 left:leaf right:leaf)
	     right:leaf)
     right:leaf)

{Browse {FromListToTree [10]}}
{Browse {FromListToTree [12 24 42]}}
{Browse {FromTreeToList Y}}