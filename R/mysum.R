mysum <-
  function(xs, acc) {
    if(length(xs)==0) return (acc)
    else return (mysum(tail(xs,-1),acc+xs[1]))
  }


mysum(seq(1,5), 0)



