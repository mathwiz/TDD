fun check_pat pat =
    let fun get_vars pat =
          case pat of
              Variable s => [s]
            | TupleP ps => List.foldl (fn (p,vs) => get_vars p @ vs) [] ps
            | ConstructorP(_,p) => get_vars p
            | _ => []
        fun unique xs =
          case xs of
              [] => true
            | x::xs' => (not (List.exists (fn y => y=x) xs'))
                        andalso unique xs'
    in
        unique (get_vars pat)
    end


fun match (valu,pat) =
    case (valu,pat) of
	      (_,Wildcard)    => SOME []
      | (_,Variable(s)) => SOME [(s,valu)]
      | (Unit,UnitP)    => SOME []
      | (Const i, ConstP j)    => if i=j then SOME [] else NONE
      | (Tuple(vs),TupleP(ps)) => if length vs = length ps
				  then all_answers match (ListPair.zip(vs,ps))
				  else NONE
      | (Constructor(s1,v), ConstructorP(s2,p)) => if s1=s2
						   then match(v,p)
                                                   else NONE
      | _ => NONE
