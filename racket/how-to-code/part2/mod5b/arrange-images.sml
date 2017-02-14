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

fun arrange f loi = 
  List.map f 

fun arrangeA Empty = Empty
  | arrangeA (Cons (h,t)) = Cons (h, arrangeA t)

fun insert (i, Empty) = Cons (i, Empty)
  | insert (i, (Cons (h, t))) = if i < h
                                then Cons (i, Cons (h, t))
                                else Cons (h, insert (i, t))

fun sort Empty = Empty
  | sort (Cons (h, t)) = insert (h, sort t)

fun layout Empty = Empty
  | layout (Cons (h, t)) = (Cons (h, t))


val shortlist = (Cons ("c", Cons ("b", Cons ("a", Empty))))

val test1_1 = sort loiA8
val test1_2 = sort shortlist

val test2_1 = layout loiA8
val test2_2 = layout shortlist
