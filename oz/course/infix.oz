declare Infix in
fun {Infix Tree}
   case Tree
   of leaf then nil
   [] btree(1:V left:L right:R) then {Append {Infix L} V|{Infix R}}
   end
end  


declare X Y in
X=btree(
     1:4
     left:btree(
	     1:2
	     left:btree(1:1 left:leaf right:leaf)
	     right:btree(1:3 left:leaf right:leaf))
     right:btree(1:5 left:leaf right:leaf))
Y=btree(
     1:10
     left:leaf
     right:leaf)

{Browse {Infix Y}}