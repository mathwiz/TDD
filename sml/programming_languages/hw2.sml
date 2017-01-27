(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

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
val x = 0
in
x
end
