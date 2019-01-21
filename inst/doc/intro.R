## ----eval=FALSE----------------------------------------------------------
#  generateBetaRandomVariable <- function(a,b) {
#      n <- 1e3
#      j<-k<-0
#      y <- numeric(n)
#      while (k < n) {
#          u <- runif(1)
#          j <- j + 1
#          x <- runif(1) #random variate from g
#          if (x^(a-1) * (1-x)^(b-1) > u) {
#              #we accept x
#              k <- k + 1
#              y[k] <- x
#          }
#      }
#      return(y)
#  }

## ----eval=FALSE----------------------------------------------------------
#  giniRatioComputing = function(n,x,mu){
#      x=sort(x)
#      gini_ratio=0
#      a=0
#      for (i in 1:n) {
#          if(mu==FALSE){
#              mu=mean(x)
#          }
#          a=a+(2*i-n-1)*x[i]
#      }
#      gini_ratio=a/(n^2*mu)
#      return(gini_ratio)
#  }
#  

## ----eval=FALSE----------------------------------------------------------
#  generateCauthyMetropolisHastings = function(n, sigma, x0, N) {
#      x <- numeric(N)
#      x[1] <- x0
#      u <- runif(N)
#      for (i in 2:N) {
#          y <- rnorm(1, x[i-1], sigma)
#          if (u[i] <= ( (dt(y, n)*dnorm(x[i-1],y,sigma))/(dt(x[i-1], n)*dnorm(y,x[i-1],n)))){
#              x[i] <- y
#          }else {
#              x[i] <- x[i-1]
#          }
#      }
#      return(x)

