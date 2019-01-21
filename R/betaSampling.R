#' @title Generate beta distribution samples using R
#' @description Generate beta distribution samples using R
#' @param a the first positive shape parameter of beta distribution
#' @param b the second positive shape parameter of beta distribution
#' @return a random sample of size \code{n}
#' @examples
#' \dontrun{
#' rnR <- generateBetaRandomVariable(2,5)
#' plot(rnR,type='l')
#' }
#' @export
generateBetaRandomVariable <- function(a,b) {
    n <- 1e3
    j<-k<-0
    y <- numeric(n)
    while (k < n) {
        u <- runif(1)
        j <- j + 1
        x <- runif(1) #random variate from g
        if (x^(a-1) * (1-x)^(b-1) > u) {
            #we accept x
            k <- k + 1
            y[k] <- x
        }
    }
    return(y)
}
