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

val test10_1 = check_pat (Variable("x")) = true
val test10_2 = check_pat (TupleP [Variable("x"),Variable("x")]) = false
val test10_3 = check_pat (TupleP [Variable("x"),Variable("y"),Variable("x")]) = false
val test10_4 = check_pat (TupleP [Variable("x"),Variable("y"),Variable("z")]) = true

(*
val test11 = match (Const(1), UnitP) = NONE

val test12 = first_match Unit [UnitP] = SOME []
*)
