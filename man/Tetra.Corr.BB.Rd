\name{Tetra.Corr.BB}
\alias{Tetra.Corr.BB}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes an tetrachoric correlation matrix for binary variables given the specified correlation matrix}
\description{This function computes the tetrachoric correlation matrix for binary-binary combinations as formulated in Demirtas et al.
(2012).}

\usage{Tetra.Corr.BB(n.BB, prop.vec, corr.vec = NULL, corr.mat = NULL)}

\arguments{
  \item{n.BB}{Number of binary variables.}
  \item{prop.vec}{Probability vector for binary variables.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered columnwise.}
  \item{corr.mat}{Specified correlation matrix.}
}

\value{A correlation matrix of size n.BB*n.BB.}
\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\seealso{\code{\link{Tetra.Corr.BB}}, \code{\link{Biserial.Corr.BN}}, \code{\link{overall.corr.mat}}}
\examples{
n.BB=2
prop.vec=c(0.4,0.7)
corr.vec=NULL
corr.mat=matrix(c(1.0,-0.3,-0.3,-0.3,-0.3,-0.3,
-0.3,1.0,-0.3,-0.3,-0.3,-0.3,
-0.3,-0.3,1.0,0.4,0.5,0.6,
-0.3,-0.3,0.4,1.0,0.7,0.8,
-0.3,-0.3,0.5,0.7,1.0,0.9,
-0.3,-0.3,0.6,0.8,0.9,1.0),6,by=TRUE)

tetcor.mat=Tetra.Corr.BB(n.BB,prop.vec,corr.vec=NULL,corr.mat)
}
