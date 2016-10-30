declare Delete in
fun {Delete K T}
   fun {RemoveSmallest T}
      case T
      of leaf then none
      [] btree(V left:L right:R) then
	 case {RemoveSmallest L}
	 of none then pair(R V)
	 [] pair(Tp Vp) then pair(btree(V left:Tp right:R) Vp)
	 end
      end
   end
   fun {DeleteAux K T}
      case T
      of leaf then leaf
      [] btree(X left:L right:R) andthen K==X then
	 case {RemoveSmallest R}
	 of none then L
	 [] pair(Tp Vp) then btree(Vp left:L right:Tp)
	 end
      [] btree(X left:L right:R) andthen K>X then
	 btree(X left:L right:{Delete K R})
      [] btree(X left:L right:R) andthen K<X then
	 btree(X left:{Delete K L} right:R)
      end
   end
in
   {DeleteAux K T}
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
	     right:btree(1:30 left:leaf right:leaf))
     right:btree(
	      1:100
	      left:btree(1:50 left:leaf right:leaf)
	      right:btree(1:150 left:leaf right:leaf))
     )
Z=btree(4 left:leaf right:leaf)

{Browse X}
{Browse {Delete 2 {Delete 4 X}}}