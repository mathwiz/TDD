sq = function(x) { x * x }
f0 = function(x) { x^2 - 1 }
f1 = function(x) { x^2 + 1 }
f2 = function(x) { x^(3/2) }
# pn is population proportion, i.e. less than 1
logistic_difference = function(pn, k) { k*pn * (1 - pn) }
log2_5 = function(xn) { logistic_difference(xn, 2.5) }
log3_2 = function(xn) { logistic_difference(xn, 3.2) }
log3_4 = function(xn) { logistic_difference(xn, 3.4) }
log3_7 = function(xn) { logistic_difference(xn, 3.7) }
log4_0 = function(xn) { logistic_difference(xn, 4.0) }

# compare. Note 0.5 is critial point since the derivative
# of pn - pn^2 is 1 - 2pn, which is zero at pn = 0.5
plot50(function(x) { logistic_difference(x, 4.0) }, .5)
plot50(function(x) { logistic_difference(x, 4.0) }, .50001)

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


doPlot = function(f, init, times=10) {
    plot(type="b", 0:times, iterate(f, init, times))
}    

plot50 = function(f, init) {
    doPlot(f, init, times=50)
}    
