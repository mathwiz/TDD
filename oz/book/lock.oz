declare
C={NewCell 0}
L={NewLock}
thread
   lock L then I in
      I=@C
      {Delay 1}
      C:=I+1
      {Browse 'I'}
      {Browse @C}
   end
end
thread
   lock L then J in
      J=@C
      {Delay 100}
      C:=J+1
      {Browse 'J'}
      {Browse @C}
   end
end

{Browse @C}