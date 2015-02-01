\name{correlation.limits}
\alias{correlation.limits}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes lower and upper correlation bounds for each pair of variables}
\description{This function computes lower and upper limits for pairwise correlation of binary-binary, binary-continuous non-normal,
and continuous non-normal-continuous non-normal combinations.}
\usage{correlation.limits(n.BB, n.NN, prop.vec = NULL, coef.mat = NULL)}
\arguments{
       \item{n.BB}{Number of binar variables.}
       \item{n.NN}{Number of continuous non-normal variables.}
       \item{prop.vec}{Probability vector for binary variables.}
       \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
}
\value{The function returns a matrix of size (n.BB + n.NN)*(n.BB + n.NN), where the lower triangular part of the matrix contains the lower bounds and the upper triangular part of the matrix contains the upper bounds of the feasible correlations.}
\details{While the function computes the exact lower and upper bounds for pairwise correlations among binary-binary variables 
as formulated in Demirtas et al. (2012), it computes approximate lower and upper bounds for pairwise correlations among binary-continuous non-normal 
and continuous non-normal-continuous non-normal variables through the method suggested by Demirtas and Hedeker (2011).}
\references{Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper
correlation bounds. The American Statistician, 65(2), 104-109.

Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}
\seealso{\code{\link{fleishman.coef}}, \code{\link{correlation.bound.check}}}

\examples{

n.BB<-2
n.NN<-4
prop.vec=c(0.4,0.7)
coef.mat=matrix(c(
 -0.31375,  0.00000,  0.10045, -0.10448,
  0.82632,  1.08574,  1.10502,  0.98085,
  0.31375,  0.00000, -0.10045,  0.10448,
  0.02271, -0.02945, -0.04001,  0.00272),4,byrow=TRUE)

limits=correlation.limits(n.BB,n.NN, prop.vec,coef.mat)
limits.bin=correlation.limits(n.BB,n.NN=0, prop.vec,coef.mat=NULL)
limits.nonnor=correlation.limits(n.BB=0,n.NN, prop.vec=NULL,coef.mat)

\dontrun{
n.BB<-1
prop.vec<-0.5
limits=correlation.limits(n.BB,n.NN, prop.vec,coef.mat=NULL)
}
}
