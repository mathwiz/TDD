(* put your solutions for problem 1 here *)

fun all_except_option (s, ss) = 
let
    fun contains xs =
      case xs of 
          [] => false
        | h :: t => same_string (s, h) orelse contains t

    fun remove xs = 
      case xs of 
          [] => []
        | h :: t => if same_string (s, h)
                    then remove t
                    else h :: remove t
in
  if contains ss
  then SOME (remove ss)
  else NONE
end


fun get_substitutions1 ([], s) = []
  | get_substitutions1 (h :: t, s) = 
  case all_except_option (s, h) of 
      NONE => get_substitutions1 (t, s)
    | SOME result => result @ get_substitutions1 (t, s)


fun get_substitutions2 (subs, s) =
let
    fun helper ([], acc) = acc
      | helper (h :: t, acc) =
        case all_except_option (s, h) of
            NONE => helper (t, acc)
          | SOME result => helper (t, acc @ result)
in
    helper (subs, [])
end


fun similar_names (subs, full) = 
let
    val {first=f, middle=m, last=l} = full

    fun new_names [] = []
      | new_names (h :: t) = 
        {first=h, middle=m, last=l} :: new_names t
in
    [full] @ new_names (get_substitutions2 (subs, f))
end


(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

(* put your solutions for problem 2 here *)

fun card_color (s, r) =
  case s of
      Clubs => Black
    | Spades => Black
    | Hearts => Red
    | Diamonds => Red


fun card_value (s, r) =
  case r of
      Ace => 11
    | Num i => i
    | King => 10
    | Queen => 10
    | Jack => 10


fun remove_card ([], c, e) = raise e
  | remove_card (h :: t, c, e) = 
    if h = c then t else h :: remove_card (t, c, e)


fun all_same_color [] = true
  | all_same_color (_ :: []) = true
  | all_same_color (c1 :: c2 :: t) = 
    card_color c1 = card_color c2 andalso all_same_color (c2 :: t)
    

fun sum_cards cards = 
let
    fun helper ([], acc) = acc
      | helper (h :: t, acc) = 
        helper (t, acc + card_value h)
in
    helper (cards, 0)
end


fun score (held, goal) =
let
    val sum = sum_cards held
    fun final prelim = 
      if all_same_color held
      then prelim div 2
      else prelim
in
    final (if sum > goal then 3 * (sum - goal) else goal - sum)
end


fun officiate (cards, moves, goal) =
let
    val ex = IllegalMove

    fun play ([], held, _) = score (held, goal)
      | play (m :: ms, held, []) = 
        (case m of
             Draw => score (held, goal)
           | Discard d => play (ms, 
                                remove_card (held, d, ex), 
                                []))
      | play (m :: ms, held, c :: cs) =
        (case m of
             Draw => if sum_cards (c :: held) > goal
                     then score ((c :: held), goal)
                     else play (ms, c :: held, cs)
           | Discard d => play (ms, 
                                remove_card (held, d, ex), 
                                c :: cs))
in
    play (moves, [], cards)
end
