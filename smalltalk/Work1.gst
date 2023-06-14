#(
'Objects.gst' 
'Collections.gst'
) 
do: [ :it | FileStream fileIn: it. Transcript show: 'Loaded ', it; cr.  ]

