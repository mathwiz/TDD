(* Homework2 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)

use "hw2.sml";

val test1 = all_except_option ("string", ["string"]) = SOME []
val test1_1 = all_except_option ("string", []) = NONE
val test1_2 = all_except_option ("string", ["string","other"]) = SOME ["other"]
val test1_3 = all_except_option ("foo", ["string","other"]) = NONE
val test1_4 = all_except_option ("string", ["string","other","string"]) = SOME ["other"]
val test1_5 = all_except_option ("string", ["other"]) = NONE

val test2 = get_substitutions1 ([["foo"],["there"]], "foo") = []
val test2_1 = get_substitutions1 ([], "foo") = []
val test2_2 = get_substitutions1 ([["foo","foosball"],["foo","there"]], "foo") = ["foosball","there"]
val test2_3 = get_substitutions1 ([["foo","foosball"],["there"]], "foo") = ["foosball"]
val test2_4 = get_substitutions1 ([["foo","foosball","foobar"],["there","foo","foosball"]], "foo") = ["foosball","foobar","there","foosball"]

val test3 = get_substitutions2 ([["foo"],["there"]], "foo") = []
val test3_1 = get_substitutions2 ([], "foo") = []
val test3_2 = get_substitutions2 ([["foo","foosball"],["foo","there"]], "foo") = ["foosball","there"]
val test3_3 = get_substitutions2 ([["foo","foosball"],["there"]], "foo") = ["foosball"]
val test3_4 = get_substitutions2 ([["foo","foosball","foobar"],["there","foo","foosball"]], "foo") = ["foosball","foobar","there","foosball"]


val test4 = similar_names ([["Fred","Fredrick"],["Elizabeth","Betty"],["Freddie","Fred","F"]], {first="Fred", middle="W", last="Smith"}) =
	    [{first="Fred", last="Smith", middle="W"}, {first="Fredrick", last="Smith", middle="W"},
	     {first="Freddie", last="Smith", middle="W"}, {first="F", last="Smith", middle="W"}]
val test4_1 = similar_names ([], {first="Fred", middle="W", last="Smith"}) = [{first="Fred", middle="W", last="Smith"}]
val test4_2 = similar_names ([["Fred","Fredrick"],["Bill","William"]], {first="Fred", middle="W", last="Smith"}) = [{first="Fred", middle="W", last="Smith"},{first="Fredrick", middle="W", last="Smith"}]

(*
val test5 = card_color (Clubs, Num 2) = Black

val test6 = card_value (Clubs, Num 2) = 2

val test7 = remove_card ([(Hearts, Ace)], (Hearts, Ace), IllegalMove) = []

val test8 = all_same_color [(Hearts, Ace), (Hearts, Ace)] = true

val test9 = sum_cards [(Clubs, Num 2),(Clubs, Num 2)] = 4

val test10 = score ([(Hearts, Num 2),(Clubs, Num 4)],10) = 4

val test11 = officiate ([(Hearts, Num 2),(Clubs, Num 4)],[Draw], 15) = 6

val test12 = officiate ([(Clubs,Ace),(Spades,Ace),(Clubs,Ace),(Spades,Ace)],
                        [Draw,Draw,Draw,Draw,Draw],
                        42)
             = 3

val test13 = ((officiate([(Clubs,Jack),(Spades,Num(8))],
                         [Draw,Discard(Hearts,Jack)],
                         42);
               false) 
              handle IllegalMove => true)
             
*)
