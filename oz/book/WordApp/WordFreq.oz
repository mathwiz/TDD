functor
import
   Dict
export
   freq:Freq
define
   
   fun {WordChar C}
      (&a=<C andthen C=<&z) orelse
      (&A=<C andthen C=<&Z) orelse
      (&0=<C andthen C=<&9)
   end

   fun {WordToAtom PW}
      {StringToAtom {Reverse PW}}
   end

   fun {IncWord D W}
      {Dict.put D W {Dict.condGet D W 0} + 1}
   end

   fun {CharsToWords PW Cs}
      case Cs
      of nil andthen PW==nil then
	 nil
      [] nil then
	 [{WordToAtom PW}]
      [] C|Cr andthen {WordChar C} then
	 {CharsToWords {Char.toLower C}|PW Cr}
      [] _|Cr andthen PW==nil then
	 {CharsToWords nil Cr}
      [] _|Cr then
	 {WordToAtom PW}|{CharsToWords nil Cr}
      end
   end

   fun {CountWords D Ws}
      case Ws
      of W|Wr then {CountWords {IncWord D W} Wr}
      [] nil then D
      end
   end

   fun {Freq Cs}
      {CountWords {Dict.new} {CharsToWords nil Cs}}
   end

end
