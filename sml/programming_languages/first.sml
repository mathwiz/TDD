(* This is a comment *)

val x = 33;
val y = 18;
val z = (x + y) + (y + 2);
(* distinguish between static environment and dynamic environment *)

val abs_of_z = if z < 0 then 0 - z else z;
val abs_of_z2 = abs z;

fun sq (n: real) = Math.pow (n, 2.0)

fun dist3 (x: real, y: real, z: real) = Math.sqrt ((sq x) + (sq y) + (sq z))


