generateiteratively <- function(n, start, fn) {
    iterations = 2:(ifelse(n < 2, 2, n))
    reduce(c(start, iterations), function(acc, it) { c(acc, fn(acc[it-1])) })
}
