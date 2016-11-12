declare NewStack Push Pop IsEmpty in
fun {NewStack} nil end
fun {Push S E} E|S end
fun {Pop S E} case S of X|S1 then E=X S1 end end
fun {IsEmpty S} S==nil end

declare E S S1 S2 in
S={NewStack}
S1={Push {Push S a1} a2}
S2={Pop S1 E}
{Browse S1}
{Browse S2}
{Browse E}


	  

	  