(* This is a comment *)

val x = 33;
val y = 18;
val z = (x + y) + (y + 2);
(* distinguish between static environment and dynamic environment *)

val abs_of_z = if z < 0 then 0 - z else z;
val abs_of_z2 = abs z;
