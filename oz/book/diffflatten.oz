declare
fun {Flatten Xs}
   fun {FlattenD Xs E}
      case Xs
      of nil then E
      [] X|Xr andthen {IsList X} then
	 {FlattenD X {FlattenD Xr E}}
      [] X|Xr then
	 X|{FlattenD Xr E}
      end
   end
in
   {FlattenD Xs nil}
end

{Browse {Flatten [1 [2 2] [[3 3 3] [~3 ~3] ~3] 4]}}