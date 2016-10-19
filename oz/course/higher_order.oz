declare
fun {M Int}
   fun {$} Int#{M Int-1} end
end

{Browse M}
{Browse {M 5}}

declare
Test = {M 5}

{Browse {Test}}

declare FunnyFunc Test in
fun {FunnyFunc FunL L}
   case L
   of H|T then {FunL.1 H}|{FunnyFunc FunL.2 T}
   else nil
   end
end
proc {Test FunL L SolL}
   {Browse {FunnyFunc FunL L}==SolL}
end

declare
Fs = [
      fun {$ X} X*2 end
      fun {$ X} X*X end
      fun {$ X} X div 2 end
      fun {$ X} X mod 2 end
     ]

declare 
Is = [10 11 12 13]

declare
SolL = [20 121 6 1]

{Test Fs Is SolL}

declare
fun {Build D C}
   fun {$ X}   

      local BuildAux in
	 fun {BuildAux Ds Cs}
	    case Ds
	    of nil then bottom
	    [] HD|TD then
	       if HD==X then Cs.1 else {BuildAux TD Cs.2} end
	    end
	 end
	 {BuildAux D C}
      end
   
   end
end

{Browse {{Build [1 2 3] [~1 ~2 ~3]} 4}}