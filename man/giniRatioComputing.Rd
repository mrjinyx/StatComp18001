% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/computingGiniRatio.R
\name{giniRatioComputing}
\alias{giniRatioComputing}
\title{Computing Gini ratio using R}
\usage{
giniRatioComputing(n, x, mu)
}
\arguments{
\item{n}{the number of iterations}

\item{x}{the samples of a given varible}

\item{mu}{the mean of the samples}
}
\value{
Gini ratio value
}
\description{
Computing Gini ratio using R
}
\examples{
\dontrun{
n=1000
s=runif(1000)
x=exp(s)
mu=mean(x)
rnR <- giniRatioComputing(n,x,mu)
print(rnR)
}
}
