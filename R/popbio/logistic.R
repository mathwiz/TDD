logisticVec <- function(n, p0, r) {
    times = 1:(n-1)
    p = rep(0, n)
    p[1] = p0
    for (i in times) {
        p[i+1] = r * p[i] * (1 - p[i])
        p[i+1] = ifelse(p[i+1] < 0, 0, p[i+1])
    }
    p
}

logisticPlot <- function(n, p0, r) {
    times = 0:(n-1)
    pops = logisticVec(n, p0, r)
    plot(times, pops, type="n")
    lines(times, pops, type="l")
}
