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

fun arrange f loi = 
  List.map f 

fun arrangeA f Empty = Empty
  | arrangeA f (Cons (h,t)) = Cons (f h, arrangeA f t)

fun f1 a = a ^ " image"

val test1 = arrangeA f1 loiA1
val test2 = arrangeA f1 loiA2 
val test3 = arrangeA f1 loiA3 
