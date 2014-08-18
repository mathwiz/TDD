oddcount <-
function(x) {
	k <- 0
	for (n in x) {
		if (n %% 2 == 0) {
			k <- k + 1
		}
	}
	return(k)
}