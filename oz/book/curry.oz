declare Max
fun {Max X}
   fun {$ Y}
      if X>=Y then X else Y end
   end
end

{Browse {{Max 10} 20}}