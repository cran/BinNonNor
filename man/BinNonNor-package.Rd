\name{BinNonNor-package}
\alias{BinNonNor-package}
\alias{BinNonNor}
\docType{package}
\title{Data Generation with Binary and Continuous Non-Normal Components}
\description{Provides R functions for generation of multiple binary and continuous non-normal variables
simultaneously given the marginal characteristics and association structure based on the methodology proposed by Demirtas et al. (2012).}
\details{
\tabular{ll}{
Package: \tab BinNonNor\cr
Type: \tab Package\cr
Version: \tab 1.4\cr
Date: \tab 2018-01-02\cr
License: \tab GPL-2 | GPL-3 \cr
}
This package consists of eleven functions. The functions \code{\link{validation.bin}},
\code{\link{validation.corr}}, and \code{\link{validation.skewness.kurtosis}} validate the specified quantities to avoid obvious specification errors. The function
\code{\link{fleishman.coef}} computes the coefficients of the third order Fleishman polynomials that are used to simulate the continuous non-normal variables. 
\code{\link{correlation.limits}} returns the lower and upper bounds of the pairwise correlation of binary and binary
and binary and continuous non-normal, and continuous non-normal and continuous non-normal pairs given their marginal distributions,
i.e. returns the range of feasible pairwise correlations. The function \code{\link{correlation.bound.check}}
checks the validity of the values of pairwise correlations. The functions \code{\link{Int.Corr.NN}}, \code{\link{Tetra.Corr.BB}}, and  \code{\link{Biserial.Corr.BN}} 
computes intermediate correlation matrix for continuous non-normal and continuous non-normal combinations, 
tetrachoric correlations for binary and binary combinations, and biserial correlations for binary and continuous non-normal combinations, respectively. 
The function \code{\link{overall.corr.mat}} assembles the final correlation matrix. The engine function \code{\link{gen.Bin.NonNor}}
generates mixed data in accordance with the specified marginal and correlational quantities. Throughout the package, 
variables are supposed to be inputted in a certain order, namely, first binary variables, and then continuous variables should be placed. 
}
\author{Gul Inan, Hakan Demirtas 

Maintainer: Gul Inan <ginan@metu.edu.tr>}

\references{Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data by power polynomials. 
Statistics in Medicine, 31(27), 3337-3346.}

\keyword{concurrent generation of binary and continuous non-normal variables}
\keyword{generating multivariate binary variables}
\keyword{generating multivariate continuous non-normal variables}
