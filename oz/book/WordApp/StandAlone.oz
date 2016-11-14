functor
import
   WordFreq Dict
   QTk at 'x-oz://system/wp/QTk.ozf'
define

   In
   Out
   D=td(title:"Enter text to compute word frequency"
	lr(label(text:"Input:")
	   text(handle:In tdscrollbar:true glue:nswe)
	   glue:nswe)
	lr(label(text:"Output:")
	   text(handle:Out tdscrollbar:true glue:nswe)
	   glue:nswe)
	lr(button(text:"Count" action:A1 glue:nswe)
	   button(text:"Quit" action:A2 glue:nswe)
	   glue:we)
       )

   A1=proc {$}
	 X O S in
	 {In get(X)}
	 O={Dict.entries {WordFreq.freq X}}
	 S={Sort O fun {$ A B} A.2>B.2 end}
	 for A#B in S do {Out insert('end' A#': '#B#' times\n')} end
      end
   
   A2=proc {$} {W close} end
   
   W={QTk.build D}
   {W show}
end
