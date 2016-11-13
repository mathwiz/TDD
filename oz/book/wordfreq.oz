declare NewDictionary Put CondGet Domain in
fun {NewDictionary} nil end
fun {Put Ds Key Value}
   case Ds
   of nil then [Key#Value]
   [] (K#V)|Dr andthen K==Key then (Key#Value)|Dr
   [] (K#V)|Dr andthen K>Key then (Key#Value)|(K#V)|Dr
   [] (K#V)|Dr andthen K<Key then (K#V)|{Put Dr Key Value}
   end
end
fun {CondGet Ds Key Default}
   case Ds
   of nil then Default
   [] (K#V)|Dr andthen K==Key then V
   [] (K#V)|Dr andthen K>Key then Default
   [] (K#V)|Dr andthen K<Key then {CondGet Dr Key Default}
   end
end
fun {Domain Ds}
   {Map Ds fun {$ K#_} K end}
end

declare WordChar WordToAtom IncWord CharsToWords CountWords WordFreq in
fun {WordChar C}
   (&a=<C andthen C=<&z) orelse
   (&A=<C andthen C=<&Z) orelse
   (&0=<C andthen C=<&9)
end
fun {WordToAtom PW}
   {StringToAtom {Reverse PW}}
end
fun {IncWord D W}
   {Put D W {CondGet D W 0} + 1}
end
fun {CharsToWords PW Cs}
   case Cs
   of nil andthen PW==nil then nil
   [] nil then [{WordToAtom PW}]
   [] C|Cr andthen {WordChar C} then {CharsToWords {Char.toLower C}|PW Cr}
   [] C|Cr andthen PW==nil then {CharsToWords nil Cr}
   [] C|Cr then {WordToAtom PW}|{CharsToWords nil Cr}
   end
end
fun {CountWords D Ws}
   case Ws
   of W|Wr then {CountWords {IncWord D W} Wr}
   [] nil then D
   end
end
fun {WordFreq Cs}
   {CountWords {NewDictionary} {CharsToWords nil Cs}}
end

declare
T="Oh my darlin, oh my darlin, oh my darlin Clementine, She is lost and gone forever, oh my darlin Clementine."
{Browse {WordFreq T}}