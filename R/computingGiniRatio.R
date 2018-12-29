#' @title Computing Gini ratio using R
#' @description Computing Gini ratio using R
#' @param n the number of iterations
#' @param x the samples of a given varible
#' @param mu the mean of the samples
#' @return Gini ratio value
#' @examples
#' \dontrun{
#' n=1000
#' s=runif(1000)
#' x=exp(s)
#' mu=mean(x)
#' rnR <- giniRatioComputing(n,x,mu)
#' print(rnR)
#' }
#' @export

giniRatioComputing = function(n,x,mu){
    x=sort(x)
    gini_ratio=0
    a=0
    for (i in 1:n) {
        if(mu==FALSE){
            mu=mean(x)
        }
        a=a+(2*i-n-1)*x[i]
    }
    gini_ratio=a/(n^2*mu)
    return(gini_ratio)
}
