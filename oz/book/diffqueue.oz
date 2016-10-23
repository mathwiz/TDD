declare NewQueue Insert Delete IsEmpty in
fun {NewQueue} X in q(0 X X) end
fun {Insert Q X}
   case Q of q(N S E) then E1 in E=X|E1 q(N+1 S E1) end
end
fun {Delete Q X}
   case Q of q(N S E) then S1 in S=X|S1 q(N-1 S1 E) end
end
fun {IsEmpty Q}
   case Q of q(N S E) then N==0 end
end

declare Q1 Q2 Q3 Q4 Q5 Q6 Q7 in
Q1={NewQueue}
Q2={Insert Q1 peter}
{Browse Q2}
Q3={Insert Q2 paul}
{Browse Q3}
local X in Q4={Delete Q3 X} {Browse X} end
{Browse Q4}
Q5={Insert Q4 mary}
{Browse Q5}
local X in Q6={Delete Q5 X} {Browse X} end
{Browse Q6}
local X in Q7={Delete Q6 X} {Browse X} end
{Browse Q7}
