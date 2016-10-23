declare NewQueue Check Insert Delete IsEmpty in
fun {NewQueue} q(nil nil) end
fun {Check Q}
   case Q of q(nil R) then q({Reverse R} nil) else Q end
end
fun {Insert Q X}
   case Q of q(F R) then {Check q(F X|R)} end
end
fun {Delete Q X}
   case Q of q(F R) then F1 in F=X|F1 {Check q(F1 R)} end
end
fun {IsEmpty Q}
   case Q of q(F R) then F==nil end
end

declare X Y Z in
X={NewQueue}
Y={Insert {Insert {Insert X 1} 2} 3}
{Browse Y}
local A in Z={Delete Y A} {Browse A} end
{Browse Z}