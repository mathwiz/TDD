(* ======================================
Data definitions
========================================= *)

type listofimage = string list

val loi1: listofimage = []
val loi2: listofimage = ["13_jh_07.jpg"]
val loi3: listofimage = "08_jh_11.jpg" :: loi2

datatype listofimageA = 
         Empty
         | Cons of (string * listofimageA)

val loiA1 = Empty
val loiA2 = Cons ("13_jh_07.jpg", Empty)
val loiA3 = Cons ("08_jh_11.jpg", loiA2)
val loiA4 = Cons ("08_jh_17.jpg", loiA3)
val loiA5 = Cons ("08_jh_18.jpg", loiA4)
val loiA6 = Cons ("10_jh_15.jpg", loiA5)
val loiA7 = Cons ("13_jh_01.jpg", loiA6)
val loiA8 = Cons ("13_jh_20.jpg", loiA7)

(* ======================================
Functions
========================================= *)

fun arrange f loi = 
  List.map f 

fun insert (i, Empty) = Cons (i, Empty)
  | insert (i, (Cons (h, t))) = if i < h
                                then Cons (i, Cons (h, t))
                                else Cons (h, insert (i, t))

fun sort Empty = Empty
  | sort (Cons (h, t)) = insert (h, sort t)

fun layout Empty = ""
  | layout (Cons (s, Empty)) = s
  | layout (Cons (h, t)) = h ^ "," ^ (layout t)

fun arrangeA l = layout (sort l)


(* ======================================
Tests
========================================= *)

val shortlist = Cons ("c", Cons ("b", Cons ("a", Empty)))
val sortedshort = Cons ("a", Cons ("b", Cons ("c", Empty)))
val sorted = Cons ("08_jh_11.jpg", Cons ("08_jh_17.jpg", Cons ("08_jh_18.jpg", Cons ("10_jh_15.jpg", Cons ("13_jh_01.jpg", Cons ("13_jh_07.jpg", Cons ("13_jh_20.jpg", Empty)))))))

val test1_1 = sort loiA8 = sorted
val test1_2 = sort shortlist = sortedshort

val test2_1 = arrangeA loiA8 = "08_jh_11.jpg,08_jh_17.jpg,08_jh_18.jpg,10_jh_15.jpg,13_jh_01.jpg,13_jh_07.jpg,13_jh_20.jpg"
val test2_2 = arrangeA shortlist = "a,b,c"
val test2_3 = arrangeA Empty = ""
val test2_4 = arrangeA (Cons ("z", Empty)) = "z"
