\name{overall.corr.mat}
\alias{overall.corr.mat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes the final correlation matrix}

\description{This function computes the final correlation matrix by combining tetrachoric correlation for
binary-binary combinations, biserial correlations for binary-continuous non-normal combinations, and intermediate correlation matrix
for continuous non-normal-continuous non-normal combinations. If the resulting correlation matrix is not positive definite,
a nearest positive matrix will be used.}

\usage{overall.corr.mat(n.BB, n.NN, prop.vec = NULL, corr.vec = NULL, corr.mat = NULL, 
coef.mat = NULL)}

\arguments{
  \item{n.BB}{Number of binary variables.}
  \item{n.NN}{Number of continuous non-normal variables.}
  \item{prop.vec}{Probability vector for binary variables.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered columnwise.}
  \item{corr.mat}{Specified correlation matrix.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
}


\value{A matrix of size (n.BB+n.NN)*(n.BB+n.NN).}

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\seealso{\code{\link{fleishman.coef}}, \code{\link{Tetra.Corr.BB}}, \code{\link{Int.Corr.NN}}, \code{\link{Biserial.Corr.BN}}}

\examples{
n.BB=2
n.NN=4
prop.vec=c(0.4,0.7)
corr.vec=NULL
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

final.corr.mat=overall.corr.mat(n.BB,n.NN,prop.vec,corr.vec=NULL,corr.mat,
coef.mat)

corr.mat.BB=corr.mat[1:2,1:2]
final.corr.mat=overall.corr.mat(n.BB,n.NN=0,prop.vec,corr.vec=NULL,
corr.mat=corr.mat.BB,coef.mat=NULL)

corr.mat.NN=corr.mat[3:6,3:6]
final.corr.mat=overall.corr.mat(n.BB=0,n.NN,prop.vec=NULL,corr.vec=NULL, 
corr.mat=corr.mat.NN,coef.mat)


n.BB=1
n.NN=1
prop.vec=0.6
corr.vec=NULL
corr.mat=matrix(c(1,-0.3,-0.3,1),2,2)
coef.mat=matrix(c(-0.31375,0.82632,0.31375,0.02271),4,1)
final.corr.mat=overall.corr.mat(n.BB,n.NN,prop.vec,corr.vec=NULL,corr.mat,
coef.mat)
}
