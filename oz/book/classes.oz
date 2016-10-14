declare
fun {NewCounter}
   C Bump Read in
   C = {NewCell 0}
   fun {Bump}
      C := @C + 1
      @C
   end
   fun {Read}
      @C
   end
   counter(bump:Bump read:Read)
end

declare
C1={NewCounter}
C2={NewCounter}

{Browse {C1.bump}}
{Browse {C2.bump}}
{Browse {C2.bump}}
{Browse {C1.read}}
{Browse {C2.read}}