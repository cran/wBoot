\name{boot.cond.mean.per}
\alias{boot.cond.mean.per}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Percentile Bootstrap Conditional Mean CI in Simple Linear Regression
%%  ~~function to do ... ~~
}

\description{Determines a confidence interval for a conditional mean
in simple linear regression, using the percentile bootstrap method.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}

\usage{
boot.cond.mean.per(x, y, xp, conf.level = 0.95, R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a (nonempty) numeric vector of predictor-variable data values.}
  \item{y}{
%%     ~~Describe \code{y} here~~
the corresponding numeric vector of response-variable data values.}
  \item{xp}{
%%     ~~Describe \code{xp} here~~
the value of the predictor variable for which to find the CI for
the conditional mean of the response variable.}
  \item{conf.level}{
%%     ~~Describe \code{conf.level} here~~
the confidence level (between 0 and 1); default is 0.95.}
  \item{R}{
%%     ~~Describe \code{R} here~~
the number of bootstrap replications; default is 9999.}
}

\value{A list with class "boot.regcor" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Boot.values }{the point estimates (fits) obtained from the bootstrap.}
\item{Confidence.limits }{the upper and lower limits of the confidence interval.}
\item{Header }{the main title for the output.}
\item{Variable.1 }{the predictor variable.}
\item{Variable.2 }{the response variable.}
\item{n }{the sample size.}
\item{Statistic }{the name of the statistic, here fit.}
\item{Observed }{the observed point estimate (fit).}
\item{Replications }{the number of bootstrap replications.}
\item{Mean }{the mean of the bootstrap values.}
\item{SE }{the standard deviation of the bootstrap values.}
\item{Bias }{the difference between the mean of the bootstrap values and the observed value.}
\item{Percent.bias }{the percentage bias: 100*|Bias/Observed|.}
\item{Null }{always NULL for this function.}
\item{Alternative }{always NULL for this function.}
\item{P.value }{always NULL for this function.}
\item{p.value }{always NULL for this function.}
\item{Level }{the confidence level.}
\item{Type }{always NULL for this function.}
\item{Confidence.interval }{the confidence interval.}
\item{cor.ana }{a logical; always FALSE for this function.}
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\section{Warning}{
This routine should be used only when bias is small and the sampling distribution
is roughly symmetric, as indicated by the output of the bootstrap. Otherwise, use
the BCa version.
}

\examples{
# Lot size, house size, and value for a sample of homes in a particular area.
data("homes")
str(homes)
attach(homes)

# 95% (default) CI for the conditional mean value of a 3000 sq.ft. home,
# with 999 bootstrap replications.
boot.cond.mean.per(HOUSE.SIZE, VALUE, 3000, R = 999)

# 90% CI for the conditional mean value of a 3000 sq.ft. home, with
# 999 bootstrap replications.
boot.cond.mean.per(HOUSE.SIZE, VALUE, 3000, conf.level = 0.90, R = 999)

detach(homes) # clean up
}

\concept{Bootstrap}
\concept{Percentile bootstrap}
\concept{Simple linear regression}
\concept{Confidence interval}
\concept{Conditional mean in simple linear regression} 

