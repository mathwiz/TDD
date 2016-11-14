declare [QTk]={Module.link ['x-oz://system/wp/QTk.ozf']}
declare [WordFreq]={Module.link ["WordFreq.ozf"]}

declare In Out
A1=proc {$}
      X O in
      {In get(X)}
      O={Dict.entries {WordFreq.freq X}}
      for A#B in O do {Out insert('end' A#': '#B#' times\n')} end
   end
A2=proc {$} {W close} end
D=td(title:"Simple text I/O interface"
     lr(label(text:"Input:")
	text(handle:In tdscrollbar:true glue:nswe)
	glue:nswe)
     lr(label(text:"Output:")
	text(handle:Out tdscrollbar:true glue:nswe)
	glue:nswe)
     lr(button(text:"Do It" action:A1 glue:nswe)
	button(text:"Quit" action:A2 glue:nswe)
	glue:we)
    )
W={QTk.build D}
{W show}
