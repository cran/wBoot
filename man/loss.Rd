\name{loss}
\alias{loss}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Pickpocket Offenses Data
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Losses ($) for a sample of 25 pickpocket offenses
}

\usage{data("loss")}

\format{
  The format is:
 num [1:25] 447 207 627 430 883 313 844 253 397 214 ...
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
The Federal Bureau of Investigation (FBI) compiles data on
robbery and property crimes and publishes the information in
\emph{Population-at-Risk Rates and Selected Crime Indicators.} A 
random sample of 25 pickpocket offenses yielded the losses, in
dollars, presented in the "loss" dataset.
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Federal Bureau of Investigation,
\emph{Population-at-Risk Rates and Selected Crime Indicators.}
}

\examples{
data(loss)
hist(loss)
boxplot(loss)
dotchart(loss)
}

\keyword{datasets}
