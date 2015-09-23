\name{tees}
\alias{tees}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Driving Distances Data for Regular and Stinger Golf Tees
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Driving distances, in yards, for independent samples of drives off
a 2-3/4" wooden tee and off a 3" Stinger Competition golf tee.
}

\usage{data("tees")}

\format{
  A data frame with 30 observations on the following 2 variables.
  \describe{
    \item{\code{REGULAR}}{a numeric vector}
    \item{\code{STINGER}}{a numeric vector}
  }
}

\details{
An independent golf equipment testing facility compared the difference
in the performance of golf balls hit off a regular 2-3/4" wooden tee to
those hit off a 3" Stinger Competition golf tee. A Callaway Great Big
Bertha driver with 10 degrees of loft was used for the test, and a robot
swung the club head at approximately 95 miles per hour. Data on total
distance traveled (in yards) with each type of tee, based on the test
results, are provided in the "tees" dataset.
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Golf Laboratories, Inc.; San Diego, CA; August 18, 2003.
}

\examples{
data(tees)
str(tees)
boxplot(tees)
attach(tees)
detach(tees)
}

\keyword{datasets}
