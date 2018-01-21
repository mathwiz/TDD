exception NoAnswer

datatype pattern = Wildcard
		 | Variable of string
		 | UnitP
		 | ConstP of int
		 | TupleP of pattern list
		 | ConstructorP of string * pattern

datatype valu = Const of int
	      | Unit
	      | Tuple of valu list
	      | Constructor of string * valu

fun g f1 f2 p =
    let 
	val r = g f1 f2 
    in
	case p of
	    Wildcard          => f1 ()
	  | Variable x        => f2 x
	  | TupleP ps         => List.foldl (fn (p,i) => (r p) + i) 0 ps
	  | ConstructorP(_,p) => r p
	  | _                 => 0
    end

(**** for the challenge problem only ****)

datatype typ = Anything
	     | UnitT
	     | IntT
	     | TupleT of typ list
	     | Datatype of string

(**** you can put all your code here ****)

val only_capitals = List.filter (fn x => Char.isUpper (String.sub (x, 0)))


val longest_string1 =  List.foldl (fn (y, x) => if String.size y > String.size x then y else x) ""


val longest_string2 =  List.foldl (fn (y, x) => if String.size y >= String.size x then y else x) ""


fun longest_string_helper f =
  List.foldl (fn (y, x) => if f (String.size y, String.size x) then y else x) ""


val longest_string3 = longest_string_helper (fn (x, y) => x > y)


val longest_string4 = longest_string_helper (fn (x, y) => x >= y)


val longest_capitalized = longest_string3 o only_capitals 


val rev_string = String.implode o List.rev o String.explode


fun first_answer f = 
let
  fun iter [] = raise NoAnswer
    | iter (h :: t) = case f h of
                        NONE => iter t
                      | SOME y => y
in
    iter
end


fun all_answers f xs =
let
  fun iter ([], acc) = SOME acc
    | iter (h :: t, acc) = case f h of
                               NONE => NONE
                             | SOME y => iter (t, acc @ y)
in
    iter (xs, [])
end


val count_wildcards = g (fn it => 1) (fn it => 0)


val count_wild_and_variable_lengths = g (fn it => 1) (fn it => String.size it)


fun count_some_var (v, p) =
    (g (fn it => 0) (fn it => if it = v then 1 else 0)) p


fun check_pat p =
let
    fun flatten [] = []
      | flatten (h :: t) = 
        (case h of  
            TupleP [] => []
          | TupleP (h'::t') => (flatten [h']) @ (flatten t')
          | ConstructorP (_,p) => flatten [p]
          | Variable x => [Variable x]
          | p => []
        ) @ (flatten t)

    fun any_dup [] = false
      | any_dup (h :: t) = List.exists (fn it => it = h) t
                           orelse any_dup t
in
    not (any_dup (flatten [p]))
end


fun match (v, p) = 
    case (v, p) of
        (_, Wildcard) => SOME []
      | (_, Variable s) => SOME [(s,v)]
      | (Unit, UnitP) => SOME []
      | (Const c, ConstP i) => if c = i then SOME [] else NONE
      | (Tuple vals, TupleP pats) => if List.length vals = List.length pats
                                     then all_answers match (ListPair.zip (vals,pats))
                                     else NONE
      | (Constructor (name, vl), ConstructorP (s,p)) => if name = s then match (vl,p) else NONE
      | _ => NONE


fun first_match v ps =
  SOME (first_answer (fn it => match (v,it)) ps)
  handle NoAnswer => NONE
