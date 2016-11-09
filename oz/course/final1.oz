local A B C in
   A=1 B=2 C=3
   local C D E in
      C=B D=5 E=A
      local A C E in
	 A=B C=D E=9
	 {Browse A+B+C}
      end
      {Browse A+B+C}
   end
   {Browse A+B+C}
end
