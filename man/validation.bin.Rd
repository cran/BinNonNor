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
n.B<-2
prop.vec=c(0.5,0.6)
validation.bin(n.B,prop.vec)

\dontrun{
n.B<-2
prop.vec=c(0.5,0.6)
validation.bin(prop.vec=prop.vec)

n.B<-3
prop.vec=c(0.5,0.6)
validation.bin(n.B,prop.vec)

n.B<-3
prop.vec=c(0.5,0.6)
validation.bin(n.B)

n.B<-0
prop.vec=c(0.5,0.6)
validation.bin(n.B,prop.vec=prop.vec)

n.B<-3
prop.vec=c(0.5,0.6)
validation.bin(n.B,prop.vec)

n.B<-3
prop.vec=NULL
validation.bin(n.B,prop.vec)

n.B<-3
prop.vec=c(1,1.5,-1.5)
validation.bin(n.B,prop.vec)
}
}