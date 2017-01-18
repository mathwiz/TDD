(* Homework1 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)
use "hw1.sml";

val test1 = is_older ((1,2,3),(2,3,4)) = true
val test1_1 = is_older ((2001, 12, 10), (2001, 11, 20)) = false
val test1_2 = is_older ((2002, 11, 10), (2001, 11, 20)) = false
val test1_3 = is_older ((2000, 11, 30), (2001, 11, 20)) = true

val test2 = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1

val test3 = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3

val test4 = dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]
val test4_1 = dates_in_month ([(2012,2,28),(2013,12,1)],12) = [(2013,12,1)]
val test4_2 = dates_in_month ([(2012,2,28),(2013,12,1)],3) = []
val test4_3 = dates_in_month ([(2012,2,28),(2013,2,1)],2) = [(2012,2,28),(2013,2,1)]

val test5 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]
val test5_1 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[12]) = [(2013,12,1)]
val test5_2 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[6]) = []

val test6 = get_nth (["hi", "there", "how", "are", "you"], 2) = "there"
val test6_1 = get_nth (["hi", "there", "how", "are", "you"], 1) = "hi"
val test6_2 = get_nth (["hi", "there", "how", "are", "you"], 3) = "how"
val test6_3 = get_nth (["hi", "there", "how", "are", "you"], 4) = "are"
val test6_4 = get_nth (["hi", "there", "how", "are", "you"], 5) = "you"

val test7 = date_to_string (2013, 6, 1) = "June 1, 2013"
val test7_1 = date_to_string (2014, 6, 1) = "June 1, 2014"
val test7_2 = date_to_string (2013, 1, 30) = "January 30, 2013"
val test7_3 = date_to_string (2013, 12, 1) = "December 1, 2013"

val test8 = number_before_reaching_sum (10, [1,2,3,4,5]) = 3
val test8_1 = number_before_reaching_sum (1, [1,2,3,4,5]) = 0

val test8_3 = number_before_reaching_sum (11, [1,2,3,4,5]) = 4
val test8_4 = number_before_reaching_sum (2, [1,2,3,4,5]) = 1
val test8_5 = number_before_reaching_sum (15, [1,2,3,4,5]) = 4
val test8_6 = number_before_reaching_sum (16, [1,2,3,4,5]) = 5

val test9 = what_month 70 = 3
val test9_1 = what_month 1 = 1
val test9_2 = what_month 365 = 12
val test9_3 = what_month 334 = 11
val test9_4 = what_month 32 = 2
val test9_5 = what_month 335 = 12
val test9_6 = what_month 199 = 7

val test10 = month_range (31, 34) = [1,2,2,2]
val test10_1 = month_range (35, 34) = []
val test10_2 = month_range (365, 365) = [12]
val test10_3 = month_range (330, 335) = [11,11,11,11,11,12]

val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)
val test11_1 = oldest [] = NONE
val test11_2 = oldest([(2016,1,1),(2017,11,22),(2015,12,20),(2014,5,5),(2012,2,28),(2011,3,31),(2011,4,28),(2000,5,31)]) = SOME (2000,5,31)
