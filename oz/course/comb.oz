declare
fun {Fact N}
   if N==0 then 1
   else N * {Fact N-1} end
end

declare
fun {Comb N K}
   {Fact N} div ({Fact K} * {Fact N-K})
end

{Browse {Fact 6}}
{Browse {Comb 4 2}}
{Browse {Comb 4 3}}
