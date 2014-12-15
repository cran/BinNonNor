\name{validation.corr}
\alias{validation.corr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Validates the specified correlation matrix}
\description{This function validates the specified correlation vector and/or matrix for appropriate dimension, symmetry,
range, and positive definiteness. If both correlation matrix and correlation vector were supplied, it
checks whether the matrix and vector are conformable.}

\usage{validation.corr(n.BB, n.NN, corr.vec = NULL, corr.mat = NULL)}

\arguments{
  \item{n.BB}{Number of binary variables.}
  \item{n.NN}{Number of continuous non-normal variables.}
  \item{corr.vec}{Vector of elements below the diagonal of correlation matrix ordered columnwise.}
  \item{corr.mat}{Specified correlation matrix.}
}

\value{The function returns TRUE if no specification problem is encountered. Otherwise, it returns an error message.}

\seealso{\code{\link{correlation.limits}}, \code{\link{correlation.bound.check}} }

\examples{
n.BB<-2
n.NN<-4
corr.vec = NULL
corr.mat=matrix(c(1.0,-0.3,-0.3,-0.3,-0.3,-0.3,
-0.3,1.0,-0.3,-0.3,-0.3,-0.3,
-0.3,-0.3,1.0,0.4,0.5,0.6,
-0.3,-0.3,0.4,1.0,0.7,0.8,
-0.3,-0.3,0.5,0.7,1.0,0.9,
-0.3,-0.3,0.6,0.8,0.9,1.0),6)

validation.corr(n.BB, n.NN, corr.vec = NULL, corr.mat)

n.BB<-2
n.NN<-4
corr.vec=c(-0.3,-0.3,-0.3,-0.3,-0.3,-0.3,-0.3,-0.3,-0.3,0.4,0.5,0.6,0.7,0.8,0.9)

validation.corr(n.BB, n.NN, corr.vec, corr.mat=NULL)

\dontrun{
validation.corr(n.BB=0, n.NN, corr.vec = NULL, corr.mat)
validation.corr(n.BB, n.NN=0, corr.vec = NULL, corr.mat)

corr.matc=corr.mat[3:6,3:6]
validation.corr(n.BB=0, n.NN=4, corr.vec = NULL, corr.mat=corr.matc)

corr.mat[2,1]=0.5
validation.corr(n.BB, n.NN, corr.vec = NULL, corr.mat)

corr.mat[1,2]=0.5
corr.mat[3,1]=1.5
corr.mat[1,3]=1.5
validation.corr(n.BB, n.NN, corr.vec = NULL, corr.mat)

npd <- matrix(c(1,    0.477, 0.644, 0.478, 0.651, 0.826,
               0.477, 1,     0.516, 0.233, 0.682,  0.75,
               0.644, 0.516, 1,     0.599, 0.581,  0.742,
               0.478, 0.233, 0.599, 1,     0.741,  0.8,
               0.651, 0.682, 0.581, 0.741, 1,      0.798,
               0.826, 0.75,  0.742, 0.8,   0.798,  1),
               nrow = 6, ncol = 6)

validation.corr(n.BB, n.NN, corr.vec = NULL, corr.mat=npd)

}
}
