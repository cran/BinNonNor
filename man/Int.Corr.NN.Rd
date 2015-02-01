\name{Int.Corr.NN}
\alias{Int.Corr.NN}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes an intermediate correlation matrix for continuous non-normal variables given the specified correlation 
matrix}

\description{This function computes the intermediate correlation matrix for continuous non-normal-continuous non-normal combinations as formulated in Demirtas et al.
(2012).}

\usage{Int.Corr.NN(n.NN, corr.vec = NULL, corr.mat = NULL, coef.mat)}

\arguments{
  \item{n.NN}{Number of continuous non-normal variables.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered columnwise.}
  \item{corr.mat}{Specified correlation matrix.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
}

\value{A correlation matrix of size n.NN*n.NN.}

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\seealso{\code{\link{fleishman.coef}}, \code{\link{Tetra.Corr.BB}}, \code{\link{Biserial.Corr.BN}}, \code{\link{overall.corr.mat}}}

\examples{
n.NN=4
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

intcor.mat=Int.Corr.NN(n.NN, corr.vec = NULL, corr.mat, coef.mat) 
}
