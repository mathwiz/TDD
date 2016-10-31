declare Rabbit NaiveRabbit in
fun {NaiveRabbit N}
   if N==0 then 2
   elseif N==1 then 4
   elseif N==2 then 8
   else {NaiveRabbit N-1}+{NaiveRabbit N-2}+{NaiveRabbit N-3}
   end
end
fun {Rabbit N}
   fun {RabbitAux K S1 S2 S3}
      if N==0 then 2
      elseif N==1 then 4
      elseif N==2 then 8
      elseif N==K then S1+S2+S3
      else 
	 {RabbitAux K+1 S1+S2+S3 S1 S2} 
      end
   end
in
   {RabbitAux 3 8 4 2}
end

declare GetRefTime in GetRefTime = {Link ['x-oz://boot/Time']}.1.getReferenceTime

declare Measure
fun {Measure N}
   proc {RunIt F K}
      {F K}
   end
   fun {TimeIt F}
      0
   end
in
   {RunIt Rabbit N}
end

{Browse {Measure 20}}
{Browse {NaiveRabbit 24}}
{Browse {Rabbit 24}}
