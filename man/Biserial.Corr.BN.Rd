\name{Biserial.Corr.BN}
\alias{Biserial.Corr.BN}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes biserial correlation matrix for binary and continuous non-normal variables given the specified correlation matrix}
\description{This function computes the biserial correlation matrix for binary-continuous non-normal combinations as formulated in Demirtas et al.
(2012).}
\usage{Biserial.Corr.BN(n.BB, n.NN, prop.vec, corr.vec = NULL, corr.mat = NULL, coef.mat)}
\arguments{
  \item{n.BB}{Number of binary variables.}
  \item{n.NN}{Number of continuous non-normal variables.}
  \item{prop.vec}{Probability vector for binary variables.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered columnwise.}
  \item{corr.mat}{Specified correlation matrix.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
}
\value{A matrix of size n.BB*n.NN.}
\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}
\seealso{\code{\link{fleishman.coef}}, \code{\link{Tetra.Corr.BB}}, \code{\link{Int.Corr.NN}}, \code{\link{overall.corr.mat}}}
\examples{
n.BB=2
n.NN=4
prop.vec=c(0.4,0.7)
corr.vec = NULL
corr.mat=matrix(c(1.0,-0.3,-0.3,-0.3,-0.3,-0.3,
-0.3,1.0,-0.3,-0.3,-0.3,-0.3,
-0.3,-0.3,1.0,0.4,0.5,0.6,
-0.3,-0.3,0.4,1.0,0.7,0.8,
-0.3,-0.3,0.5,0.7,1.0,0.9,
-0.3,-0.3,0.6,0.8,0.9,1.0),6,byrow=TRUE)
coef.mat=matrix(c(
 -0.31375,  0.00000,  0.10045, -0.10448,
  0.82632,  1.08574,  1.10502,  0.98085,
  0.31375,  0.00000, -0.10045,  0.10448,
  0.02271, -0.02945, -0.04001,  0.00272),4,byrow=TRUE)

bicor.mat=Biserial.Corr.BN(n.BB, n.NN, prop.vec, corr.vec = NULL, corr.mat, coef.mat)

}

















