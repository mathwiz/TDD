fun all_except_option (s,xs) =
  case xs of
      [] => NONE
    | x::xs' => if same_string(s,x)
                then SOME xs'
                else case all_except_option(s,xs') of
                         NONE => NONE
                       | SOME y => SOME(x::y)



fun officiate (cards, moves, goal) =
	let
		fun game (hand,    cs,                []) = score(hand, goal)
		  | game (hand,    [],          Draw::ms) = score(hand, goal)
		  | game (hand,    cs, (Discard dis)::ms) = game(remove_card(hand, dis, IllegalMove), cs, ms)
		  | game (hand, c::cs,          Draw::ms) =
		    	if sum_cards (c::hand) > goal
		    	then score(c::hand, goal)
		    	else game(c::hand, cs, ms)
	in
		game([], cards, moves)
	end