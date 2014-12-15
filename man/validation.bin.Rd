\name{validation.bin}
\alias{validation.bin}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Validates the marginal specification of the binary variables}

\description{Checks whether the marginal specification of the binary part is valid and consistent.}
\usage{validation.bin(n.BB, prop.vec = NULL)}

\arguments{
  \item{n.BB}{Number of binary variables.}
  \item{prop.vec}{Probability vector for binary variables.}
}

\value{The function returns TRUE if no specification problem is encountered. Otherwise, it returns an error message.}

\examples{
prop.vec=c(0.5,0.6)
validation.bin(2,prop.vec)

\dontrun{
prop.vec=c(0.5,0.6)
validation.bin(prop.vec=prop.vec)

prop.vec=c(0.5,0.6)
validation.bin(-3,prop.vec)

prop.vec=c(0.5,0.6)
validation.bin(3)

prop.vec=c(0.5,0.6)
validation.bin(0,prop.vec=prop.vec)

prop.vec=c(0.5,0.6)
validation.bin(3,prop.vec)

prop.vec=NULL
validation.bin(3,prop.vec)

prop.vec=c(1,1.5,-1.5)
validation.bin(3,prop.vec)
}
}