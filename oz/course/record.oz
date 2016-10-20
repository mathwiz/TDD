{Browse {Record.make test [a b c]}}
{Browse {Record.make test nil}}

{Browse {Record.adjoinAt z(3:b a:5) p 5}}

declare Keys Vals
Keys=[s t v u w]
Vals=[100 101 110 111 1000]

declare Keys1 Vals1
Keys1=[s t v u w]
Vals1=[100 101 110 111 [inner [a b c] [[inner2 [x y] [~1 ~2]] 2 3]]]

declare
fun {Transform L}
   local R Parse Make in
      fun {Parse Ks Vs Rec}
	 case Ks
	 of nil then Rec
	 [] HK|TK then
	    case Vs
	    of HV|TV then
	       {Parse TK TV {Record.adjoinAt Rec HK {Make HV}}}
	    end
	 end
      end

      fun {Make RecOrAtom}
	 case RecOrAtom
	 of Label|Keys|Vals|nil then
	    {Parse Keys Vals Label()}
	 else
	    RecOrAtom
	 end
      end
      {Make L}
   end
end

{Browse {Transform [yohan Keys Vals]}}
{Browse {Transform [yohan Keys1 Vals1]}}
