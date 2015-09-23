\name{homes}
\alias{homes}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
House Size, Lot Size, and Value Data
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Data on house size (in square feet), lot size (in acres), and assessed
value (in thousands of dollars) for a sample of homes in a particular
area.
}

\usage{data("homes")}

\format{
  A data frame with 44 observations on the following 3 variables.
  \describe{
    \item{\code{HOUSE.SIZE}}{a numeric vector}
    \item{\code{LOT.SIZE}}{a numeric vector}
    \item{\code{VALUE}}{a numeric vector}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
The document cited below describes how county assessors use computerized
systems to value single-family residential properties for property tax
purposes. The house size (in square feet), lot size (in acres), and
assessed value (in thousands of dollars) for a sample of 44 homes in a
particular area are presented in the "homes" dataset.
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
\emph{Arizona Residential Property Valuation System}, published by the
\emph{Arizona Department of Revenue}.}

\examples{
data(homes)
str(homes)
plot(homes)
attach(homes)
detach(homes)
}

\keyword{datasets}
