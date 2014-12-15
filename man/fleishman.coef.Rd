\name{fleishman.coef}
\alias{fleishman.coef}
\title{Computes the coefficients of Fleishman third order polynomials}

\description{Computes the coefficients of Fleishman third order polynomials given the marginal skewness and kurtosis parameters of
continuous variables.}

\usage{fleishman.coef(n.NN, skewness.vec = NULL, kurtosis.vec = NULL)}

\arguments{
  \item{n.NN}{Number of  continuous non-normal variables.}
  \item{skewness.vec}{Skewness vector for continuous non-normal variables.}
  \item{kurtosis.vec}{Kurtosis vector for continuous non-normal variables.}
}

\value{A matrix of coefficients. The columns represent the variables and rows represent the corresponding a,b,c, and d coefficients.}

\details{The execution of the function may take some time since it uses multiple starting points to solve the system of nonlinear equations based on the third order
Fleishman polynomials. However, since users need to run it only once for a given set of specifications, it does not constitute a problem.} 

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.

Fleishman, A.I. (1978). A method for simulating non-normal distributions. Psychometrika, 43(4), 521-532.}

\seealso{\code{\link{validation.skewness.kurtosis}} }

\examples{

\dontrun{

#Consider four continuous non-normal variables, which come from
#Exp(1),Beta(4,4),Beta(4,2) and Gamma(10,10), respectively.
#Skewness and kurtosis values of these variables are as follows:

skewness.vec=c(2,0,-0.4677,0.6325)
kurtosis.vec=c(6,-0.5455,-0.3750,0.6)
coef.mat=fleishman.coef(4,skewness.vec, kurtosis.vec)

skewness.vec=c(0)
kurtosis.vec=c(-1.2)
coef.mat=fleishman.coef(1,skewness.vec, kurtosis.vec)

skewness.vec1=c(3)
kurtosis.vec1=c(5)
coef.mat=fleishman.coef(1,skewness.vec1, kurtosis.vec1)
}
}
