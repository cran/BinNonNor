\name{correlation.bound.check}
\alias{correlation.bound.check}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Checks if the pairwise correlation among variables are within the feasible range}
\description{This function checks if there are range violations among correlation of binary-binary, binary-continuous, and continuous-continuous combinations.}
\usage{correlation.bound.check(n.BB, n.NN, prop.vec = NULL, corr.vec = NULL, 
       corr.mat = NULL, coef.mat = NULL)}
\arguments{
  \item{n.BB}{Number of binary variables.}
  \item{n.NN}{Number of continuous non-normal variables.}
  \item{prop.vec}{Probability vector for binary variables.}
  \item{corr.vec}{Specified correlation vector.}
  \item{corr.mat}{Specified correlation matrix.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
}

\value{The function returns TRUE if no specification problem is encountered. Otherwise, it returns an error message.}

\references{Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper
correlation bounds. The American Statistician, 65(2), 104-109.

Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\seealso{\code{\link{fleishman.coef}}, \code{\link{correlation.limits}}, \code{\link{validation.corr}} }

\examples{
prop.vec=c(0.4,0.7)
n.BB=2
n.NN=4
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

correlation.bound.check(n.BB,n.NN,prop.vec,corr.vec=NULL,corr.mat,coef.mat)

cor.mat.BB=corr.mat[1:2,1:2]
correlation.bound.check(n.BB,n.NN=0,prop.vec,corr.vec=NULL,corr.mat=cor.mat.BB,
coef.mat=NULL)

cor.mat.NN=corr.mat[3:6,3:6]
correlation.bound.check(n.BB=0,n.NN,prop.vec=NULL,corr.vec=NULL,corr.mat=cor.mat.NN,
coef.mat)

n.BB=1
prop.vec=0.5
corr.mat=diag(n.BB)
correlation.bound.check(n.BB,n.NN=0,prop.vec,corr.vec=NULL,corr.mat=corr.mat,
coef.mat=NULL)

\dontrun{
cor.mat.NNnew=cor.mat.NN
cor.mat.NNnew[1,2]=0.92
cor.mat.NNnew[2,1]=0.92
correlation.bound.check(n.BB=0,n.NN,prop.vec=NULL,corr.vec=NULL,corr.mat=cor.mat.NNnew,
coef.mat)
}
}