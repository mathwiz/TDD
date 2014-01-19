fun filter(f, xs) =
case xs of
    [] => []
  | x::xs' => if f(x) then x :: filter(f, xs')
	      else filter(f, xs')