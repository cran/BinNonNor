\name{gen.Bin.NonNor}
\alias{gen.Bin.NonNor}
\title{Simulates a sample of size n from a set of multivariate binary and continuous non-normal variables}
\description{This function simulates a sample of size n from a set of multivariate binary and continuous non-normal variables with pre-specified marginals and final correlation matrix. Setting n.NN=0 and quantities that are pertinent to the continuous part to NULL results in simulation of a sample of size n from a set of multivariate binary variables. Similarly, setting n.BB=0
and prop.vec=NULL results in simulation of a sample of size n from a set of multivariate continuous non-normal variables.}

\usage{gen.Bin.NonNor(n, n.BB, n.NN, prop.vec = NULL, mean.vec = NULL, variance.vec = NULL, 
skewness.vec = NULL, kurtosis.vec = NULL, final.corr.mat, coef.mat = NULL)}

\arguments{
  \item{n}{Number of variates.}
  \item{n.BB}{Number of binary variables.}
  \item{n.NN}{Number of continuous non-normal variables.}
  \item{prop.vec}{Probability vector for binary variables.}
  \item{mean.vec}{Mean vector for continuous non-normal variables.}
  \item{variance.vec}{Variance vector for continuous non-normal variables.}
  \item{skewness.vec}{Skewness vector for continuous non-normal variables.}
  \item{kurtosis.vec}{Kurtosis vector for continuous non-normal variables.}
  \item{final.corr.mat}{Final correlation matrix produced from \code{\link{overall.corr.mat}}.}
  \item{coef.mat}{Matrix of coefficients produced from \code{\link{fleishman.coef}}.}
}

\value{A matrix of generated data.}

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\seealso{\code{\link{validation.bin}}, \code{\link{validation.skewness.kurtosis}},\code{\link{overall.corr.mat}}, \code{\link{fleishman.coef}}
}

\examples{
\dontrun{
n=100
n.BB=2
n.NN=4
prop.vec=c(0.4,0.7)
mean.vec=c(1,0.5,4/6,100)
variance.vec=c(1,0.02777778,0.03174603,1000)
skewness.vec=c(2,0,-0.4677,0.6325)
kurtosis.vec=c(6,-0.5455,-0.3750,0.6)
corr.mat=matrix(c(1.0,-0.3,-0.3,-0.3,-0.3,-0.3,
-0.3,1.0,-0.3,-0.3,-0.3,-0.3,
-0.3,-0.3,1.0,0.4,0.5,0.6,
-0.3,-0.3,0.4,1.0,0.7,0.8,
-0.3,-0.3,0.5,0.7,1.0,0.9,
-0.3,-0.3,0.6,0.8,0.9,1.0),6,byrow=TRUE)

coef.mat=fleishman.coef(n.NN, skewness.vec, kurtosis.vec)

coef.mat
      NN1       NN2      NN3      NN4
a -0.31375  0.00000  0.10045 -0.10448
b  0.82632  1.08574  1.10502  0.98085
c  0.31375  0.00000 -0.10045  0.10448
d  0.02271 -0.02945 -0.04001  0.00272


intcor.mat=Int.Corr.NN(n.NN, corr.vec = NULL, corr.mat, coef.mat) 

intcor.mat
          [,1]      [,2]      [,3]      [,4]
[1,] 1.0000000 0.4487799 0.5940671 0.6471184
[2,] 0.4487799 1.0000000 0.7099443 0.8112702
[3,] 0.5940671 0.7099443 1.0000000 0.9436196
[4,] 0.6471184 0.8112702 0.9436196 1.0000000


tetcor.mat=Tetra.Corr.BB(n.BB, prop.vec, corr.vec = NULL, corr.mat)

tetcor.mat
           [,1]       [,2]
[1,]  1.0000000 -0.4713861
[2,] -0.4713861  1.0000000


bicor.mat=Biserial.Corr.BN(n.BB, n.NN, prop.vec, corr.vec = NULL, corr.mat, coef.mat)

bicor.mat
           [,1]       [,2]       [,3]       [,4]
[1,] -0.4253058 -0.3814058 -0.3862068 -0.3846430
[2,] -0.4420612 -0.3964317 -0.4014219 -0.3997964

final.corr.mat=overall.corr.mat(n.BB, n.NN, prop.vec, corr.vec = NULL, corr.mat, coef.mat)

final.corr.mat
           [,1]       [,2]       [,3]       [,4]       [,5]       [,6]
[1,]  1.0000000 -0.4713861 -0.4253058 -0.3814058 -0.3862068 -0.3846430
[2,] -0.4713861  1.0000000 -0.4420612 -0.3964317 -0.4014219 -0.3997964
[3,] -0.4253058 -0.4420612  1.0000000  0.4487799  0.5940671  0.6471184
[4,] -0.3814058 -0.3964317  0.4487799  1.0000000  0.7099443  0.8112702
[5,] -0.3862068 -0.4014219  0.5940671  0.7099443  1.0000000  0.9436196
[6,] -0.3846430 -0.3997964  0.6471184  0.8112702  0.9436196  1.0000000


data=gen.Bin.NonNor(n, n.BB, n.NN, prop.vec, mean.vec, variance.vec, skewness.vec, kurtosis.vec, 
final.corr.mat, coef.mat)

amat=final.corr.mat[1:2,1:2]
multibin=gen.Bin.NonNor(n=1000, n.BB, n.NN=0, prop.vec, mean.vec=NULL, variance.vec=NULL, 
skewness.vec=NULL, kurtosis.vec=NULL, final.corr.mat=amat, coef.mat=NULL)
apply(multibin,2,mean)

bmat=final.corr.mat[3:6,3:6]
multinonnor=gen.Bin.NonNor(n=100, n.BB=0, n.NN, prop.vec=NULL, mean.vec, variance.vec, 
skewness.vec, kurtosis.vec, final.corr.mat=bmat, coef.mat)
apply(multinonnor,2,mean)
apply(multinonnor,2,var)
}
}