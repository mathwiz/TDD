declare
local C in
   C = {NewCell 0}
   fun {Bump}
      C := @C + 1
      @C
   end
   fun {Read}
      @C
   end
end

{Browse {Bump}}
{Browse {Bump}}
{Browse {Read}}
{Browse {Bump}}
