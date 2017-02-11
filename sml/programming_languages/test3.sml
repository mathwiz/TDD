use "hw3.sml";

val test1_1 = only_capitals ["A","B","C"] = ["A","B","C"]
val test1_2 = only_capitals ["Aa","bb","cb"] = ["Aa"]
val test1_3 = only_capitals [] = []
val test1_4 = only_capitals ["aA","BB","Cc"] = ["BB","Cc"]

val test2_1 = longest_string1 ["A","bc","C"] = "bc"
val test2_2 = longest_string1 ["Aaa","bc","C"] = "Aaa"
val test2_3 = longest_string1 [] = ""
val test2_4 = longest_string1 ["Aa","bc","C"] = "Aa"

val test3_1 = longest_string2 ["A","bc","C"] = "bc"
val test3_2 = longest_string2 ["Aaa","bc","C"] = "Aaa"
val test3_3 = longest_string2 [] = ""
val test3_4 = longest_string2 ["Aa","bc","C"] = "bc"

val test4a_1 = longest_string3 ["A","bc","C"] = "bc"
val test4a_2 = longest_string3 ["Aaa","bc","C"] = "Aaa"
val test4a_3 = longest_string3 [] = ""
val test4a_4 = longest_string3 ["Aa","bc","C"] = "Aa"

val test4b_1 = longest_string4 ["A","bc","C"] = "bc"
val test4b_2 = longest_string4 ["Aaa","bc","C"] = "Aaa"
val test4b_3 = longest_string4 [] = ""
val test4b_4 = longest_string4 ["Aa","bc","C"] = "bc"

val test5_1 = longest_capitalized ["A","bc","C"] = "A"
val test5_2 = longest_capitalized ["b"] = ""
val test5_3 = longest_capitalized [] = ""
val test5_4 = longest_capitalized ["A","bc","Cc"] = "Cc"

val test6_1 = rev_string "abc" = "cba"
val test6_2 = rev_string "" = ""
val test6_3 = rev_string "a" = "a"

val test7_1 = first_answer (fn x => if x > 3 then SOME x else NONE) [1,2,3,4,5] = 4
val test7_2 = (first_answer (fn x => if x < 0 then SOME x else NONE) [1,2,3,4,5] handle NoAnswer => ~1) = ~1
val test7_3 = first_answer (fn x => if x > 4 then SOME x else NONE) [1,2,3,4,5] = 5

val test8_1 = all_answers (fn x => if x = 1 then SOME [x] else NONE) [2,3,4,5,6,7] = NONE
val test8_2 = all_answers (fn x => if x = 1 then SOME [x] else NONE) [] = SOME []
val test8_3 = all_answers (fn x => if x > 1 then SOME [x] else NONE) [2,3,4,5,6,7] = SOME [2,3,4,5,6,7]
val test8_4 = all_answers (fn x => if x > 1 then SOME [x] else NONE) [7] = SOME [7]

val test9a_1 = count_wildcards Wildcard = 1
val test9a_2 = count_wildcards (ConstructorP ("foo", Wildcard)) = 1
val test9a_3 = count_wildcards UnitP = 0
val test9a_4 = count_wildcards (TupleP [UnitP, Wildcard, UnitP, Wildcard, Wildcard]) = 3

val test9b_1 = count_wild_and_variable_lengths (Variable("a")) = 1
val test9b_2 = count_wild_and_variable_lengths Wildcard = 1
val test9b_3 = count_wild_and_variable_lengths (TupleP [UnitP, Wildcard, UnitP, Wildcard, Wildcard, Variable("a")]) = 4
val test9b_4 = count_wild_and_variable_lengths (ConstructorP ("foo", TupleP [UnitP, Wildcard, UnitP, Wildcard, Wildcard, Variable("a")])) = 4

val test9c_1 = count_some_var ("x", Variable("x")) = 1
val test9c_2 = count_some_var ("x", ConstructorP ("x", Variable("x"))) = 1
val test9c_3 = count_some_var ("x", TupleP [Variable("x"),Variable("x"),Variable("y")]) = 2
val test9c_4 = count_some_var ("x", UnitP) = 0

val test10 = check_pat (TupleP []) = true
val test10_1 = check_pat (Variable("x")) = true
val test10_2 = check_pat (TupleP [Variable("x"),Variable("x")]) = false
val test10_3 = check_pat (TupleP [Variable("x"),Variable("y"),Variable("x")]) = false
val test10_4 = check_pat (TupleP [Variable("x"),Variable("y"),Variable("z")]) = true
val test10_5 = check_pat (ConstructorP ("foo", TupleP [Variable("x"),Variable("y"),Variable("z")])) = true
val test10_6 = check_pat (ConstructorP ("foo", TupleP [Variable("x"),Variable("y"),Variable("x")])) = false
val test10_7 = check_pat (ConstructorP ("foo", TupleP [TupleP [Wildcard, Variable("x")], UnitP])) = true
val test10_8 = check_pat Wildcard = true
val test10_9 = check_pat (TupleP [UnitP, TupleP [TupleP [Variable("x"), Wildcard], TupleP [Variable("y"), Variable("z")]], Variable("a")]) = true
val test10_10 = check_pat (TupleP [Variable("x"), TupleP [TupleP [Variable("x"), Wildcard], TupleP [Variable("y"), Variable("z")]], Variable("a")]) = false
(*val test10_10 = check_pat (TupleP [Variable("x"), TupleP [TupleP [Variable("x"), Wildcard], TupleP [Variable("y"), Variable("z")]], Variable("a")])*)

val test11_0 = match (Unit, UnitP) = SOME []
val test11_1 = match (Const(1), UnitP) = NONE
val test11_2 = match (Const(1), Wildcard) = SOME []
val test11_3 = match (Tuple [], Wildcard) = SOME []
val test11_4 = match (Const(1), Variable("x")) = SOME [("x",Const(1))]
val test11_5 = match (Unit, Variable("x")) = SOME [("x",Unit)]
val test11_6 = match (Const(1), ConstP(1)) = SOME []
val test11_7 = match (Unit, ConstP(1)) = NONE
val test11_8 = match (Const(2), ConstP(1)) = NONE
val test11_9 = match (Unit, ConstructorP("a",UnitP)) = NONE
val test11_10 = match (Constructor("x",Unit), ConstructorP("a",UnitP)) = NONE
val test11_11 = match (Constructor("a",Unit), ConstructorP("a",UnitP)) = SOME []
val test11_12 = match (Constructor("a",Const(1)), ConstructorP("a",UnitP)) = NONE
val test11_13 = match (Constructor("a",Unit), ConstructorP("a",Variable("x"))) = SOME [("x",Unit)]
val test11_14 = match (Constructor("a",Const(1)), ConstructorP("a",Variable("x"))) = SOME [("x",Const(1))]
val test11_15 = match (Constructor("a",(Constructor("b",Const(1)))), ConstructorP("a",(ConstructorP("b",Variable("x"))))) = SOME [("x",Const(1))]
val test11_20 = match (Tuple [], TupleP []) = SOME []
val test11_21 = match (Tuple [Const(2),Const(5)], TupleP [Wildcard, ConstP(5)]) = SOME []
val test11_22 = match (Constructor("SOME", Tuple [Const(2),Const(3)]), ConstructorP("SOME", TupleP [Variable("x"),ConstP(3)])) = SOME [("x",Const(2))]
val test11_23 = match (Tuple [Const(1), Tuple [Const(2),Const(3)]], TupleP [Variable("s"), TupleP [Variable("t"), Wildcard]]) = SOME [("s",Const(1)),("t",Const(2))]
val test11_24 = match (Tuple [Const(1),Const(2),Const(3)], TupleP [Variable("a"),Variable("b"),Variable("c")]) = SOME [("a",Const(1)),("b",Const(2)),("c",Const(3))]
(*
val test11 = all_answers match (ListPair.zip ([Const(1),Const(2),Const(3)], [Variable("a"),Variable("b"),Variable("c")]) )
*)
(*
val test12_0 = first_match Unit [UnitP] = SOME []
val test12_1 = first_match Unit [TupleP [], UnitP] = SOME []
val test12_2 = first_match Const(1) [UnitP, Variable("x")] = SOME [("x",Const(1))]
val test12_3 = first_match Const(1) [UnitP, Variable("x")] = SOME [("x",Const(1))]
val test12_2 = first_match Const(1) [UnitP, Variable("x")] = SOME [("x",Const(1))]
val test12_2 = first_match Const(1) [UnitP, Variable("x")] = SOME [("x",Const(1))]
val test12_2 = first_match Const(1) [UnitP, Variable("x")] = SOME [("x",Const(1))]
val test12_10 = first_match Const(1) [UnitP, Constructor("x",Const(1))] = NONE
val test12_11 = first_match Const(1) [] = NONE
*)
