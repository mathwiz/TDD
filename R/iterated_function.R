sq = function(x) { x * x }
f0 = function(x) { x + 1 }
f1 = function(x) { x^2 + 1 }
f2 = function(x) { x^(3/2) }

empty = function(list) { length(list) == 0 }

head = function(x) { x[1] }

tail = function(x) { x[-1] }

iterate = function(f, init, times) {
    recur = function(n, it, acc) {
        if (n == times)
            acc
        else {
            val = f(it)
            recur(n+1, val, c(acc, val))
        }    
    }
    recur(0, init, c(init))
}    


doPlot = function(f, init, times) {
    plot(type="b", 0:times, iterate(f, init, times))
}    
