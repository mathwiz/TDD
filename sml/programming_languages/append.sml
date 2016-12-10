fun append(xs,ys) = 
case xs of
    [] => ys
  | x::xs' => x :: append(xs',ys)

fun append2 ([],ys) = ys
  | append2 (x::xs',ys) = x :: append2(xs',ys)

datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

val hand1 = [(Hearts,King),(Clubs,King),(Clubs,Num(2)),(Spades,Num(2)),(Spades,Num(4))]
val hand2 = [(Spades,King),(Spades,Ace),(Spades,Queen),(Spades,Num(2)),(Spades,Num(4))]
val hand3 = [(Spades,King),(Clubs,King),(Clubs,Num(2)),(Spades,Num(2)),(Spades,Num(4))]
