logisticvector <- function(n, p0, r) {
    generator <- function(x) { r * x * (1 - x) }
    iterations = 2:n
    reduce(c(p0, iterations), function(acc, it) { c(acc, generator(acc[it-1])) })
}
