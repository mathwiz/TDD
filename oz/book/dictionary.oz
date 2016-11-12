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

declare D1 D2 D3 in
D1={NewDictionary}
D2={Put D1 1 a1}
D3={Put D2 2 a2}
{Browse D3}
{Browse {Domain D3}}
{Browse {CondGet D3 1 ~1}}