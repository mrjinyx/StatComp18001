#' @title Generate cauthy distribution with Metropolis Hastings method
#' @description Generate cauthy distribution with Metropolis Hastings method
#' @param n degree of freedom of t distribution
#' @param sigma standard variance of proposal distribution
#' @param x0 initial value
#' @param N size of random numbers required
#' @return a random samples of cauthy distribution
#' @examples
#' \dontrun{
#' n <- 1
#' x0 <- 10
#' sigma <-3
#' N <- 5000
#' rnR <- generateCauthyMetropolisHastings(n,sigma,x0,N)
#' print(rnR)
#' }
#' @export
generateCauthyMetropolisHastings = function(n, sigma, x0, N) {
    x <- numeric(N)
    x[1] <- x0
    u <- runif(N)
    for (i in 2:N) {
        y <- rnorm(1, x[i-1], sigma)
        if (u[i] <= ( (dt(y, n)*dnorm(x[i-1],y,sigma))/(dt(x[i-1], n)*dnorm(y,x[i-1],n)))){
            x[i] <- y
        }else {
            x[i] <- x[i-1]
        }
    }
    return(x)
}
