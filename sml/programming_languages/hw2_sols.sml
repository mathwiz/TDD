fun all_except_option (s,xs) =
  case xs of
      [] => NONE
    | x::xs' => if same_string(s,x)
                then SOME xs'
                else case all_except_option(s,xs') of
                         NONE => NONE
                       | SOME y => SOME(x::y)


