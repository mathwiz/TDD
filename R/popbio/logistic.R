logisticVec <- function(n, p0, r) {
    times = 1:(n-1)
    p = rep(0, n)
    p[1] = p0
    for (i in times) {
        n = r * p[i] * (1 - p[i])
        p[i+1] = ifelse(n < 0, 0, n)
    }
    p
}

logisticPlot <- function(n, p0, r) {
    times = 0:(n-1)
    pops = logisticVec(n, p0, r)
    plot(times, pops, type="n")
    lines(times, pops, type="l")
}
