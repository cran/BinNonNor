\name{validation.skewness.kurtosis}
\alias{validation.skewness.kurtosis}
\title{Validates the marginal specification of the continuous non-normal variables}

\description{Checks whether the marginal specification of the continuous non-normal part is valid and consistent.}

\usage{validation.skewness.kurtosis(n.NN, skewness.vec = NULL, kurtosis.vec = NULL)}

\arguments{
  \item{n.NN}{Number of continuous non-normal variables.}
  \item{skewness.vec}{Skewness vector for continuous non-normal variables.}
  \item{kurtosis.vec}{Kurtosis vector for continuous non-normal variables.}
}

\value{The function returns TRUE if no specification problem is encountered. Otherwise, it returns an error message.}

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\examples{
n.NN<-3
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,8)
validation.skewness.kurtosis(n.NN,skewness.vec, kurtosis.vec)

\dontrun{
n.NN<-3
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,8)
validation.skewness.kurtosis(skewness.vec=skewness.vec, kurtosis.vec=kurtosis.vec)

n.NN<--1
skewness.vec=c(0)
kurtosis.vec=c(-1.2)
validation.skewness.kurtosis(n.NN,skewness.vec, kurtosis.vec)

n.NN<-3
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,5)
validation.skewness.kurtosis(3)

n.NN<-3
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,5)
validation.skewness.kurtosis(n.NN,skewness.vec=skewness.vec)
validation.skewness.kurtosis(n.NN,kurtosis.vec=kurtosis.vec)

n.NN<-0
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,8)
validation.skewness.kurtosis(n.NN,skewness.vec, kurtosis.vec)

n.NN<-2
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6,8)
validation.skewness.kurtosis(n.NN,skewness.vec, kurtosis.vec)

n.NN<-2
skewness.vec=c(0,2,3)
kurtosis.vec=c(-1.2,6)
validation.skewness.kurtosis(n.NN,skewness.vec, kurtosis.vec)

skewness.vec=c(2,3)
kurtosis.vec=c(1,5)
validation.skewness.kurtosis(n.NN,skewness.vec=skewness.vec, kurtosis.vec=kurtosis.vec)
}
}
