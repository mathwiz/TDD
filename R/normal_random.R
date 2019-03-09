n<- 1000
norms<- sort(rnorm(n))
plot(1:n, norms)
lines(1:n, norms, type="l")
