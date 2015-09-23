\name{boot.slope.bca}
\alias{boot.slope.bca}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
BCa Bootstrap Test and CI for the Slope of a Population Regression Line
in Simple Linear Regression
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Obtains a confidence interval and (optionally) performs a hypothesis test
for the slope of a population regression line in simple linear regression,
using the BCa bootstrap method.
}

\usage{
boot.slope.bca(x, y, null.hyp = NULL,
               alternative = c("two.sided", "less", "greater"),
               conf.level = 0.95, type = NULL, R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a (non-empty) numeric vector of predictor-variable data values.}
  \item{y}{
%%     ~~Describe \code{y} here~~
the corresponding numeric vector of response-variable data values.}
  \item{null.hyp}{
%%     ~~Describe \code{null.hyp} here~~
the null-hypothesis value; if omitted, no hypothesis test is performed.}
  \item{alternative}{
%%     ~~Describe \code{alternative} here~~
a character string specifying the alternative hypothesis; must be one
of "two.sided" (default), "greater", or "less".}
  \item{conf.level}{
%%     ~~Describe \code{conf.level} here~~
the confidence level (between 0 and 1); default is 0.95.}
  \item{type}{
%%     ~~Describe \code{type} here~~
character string specifying the type of CI; if user-supplied, must be one
of "two-sided", "upper-bound", or "lower-bound"; defaults to "two-sided"
if alternative is "two.sided", "upper-bound" if alternative is "less",
and "lower-bound" if alternative is "greater".}
  \item{R}{
%%     ~~Describe \code{R} here~~
the number of bootstrap replications; default is 9999.}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
If \code{null.hyp = 0} and \code{alternative = "two.sided"}, then the
hypothesis test is equivalent to testing whether the predictor variable
is useful for making predictions.
}

\value{A list with class "boot.regcor" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Boot.values }{the point estimates for the slope obtained from the bootstrap.}
\item{Confidence.limits }{the confidence limit(s) for the confidence interval.}
\item{Header }{the main title for the output.}
\item{Variable.1 }{the predictor variable.}
\item{Variable.2 }{the response variable.}
\item{n }{the sample size.}
\item{Statistic }{the name of the statistic, here slope.}
\item{Observed }{the observed point estimate for the slope.}
\item{Replications }{the number of bootstrap replications.}
\item{Mean }{the mean of the bootstrap values.}
\item{SE }{the standard deviation of the bootstrap values.}
\item{Bias }{the difference between the mean of the bootstrap values and the observed value.}
\item{Percent.bias }{the percentage bias: 100*|Bias/Observed|.}
\item{Null }{the null-hypothesis value or NULL.}
\item{Alternative }{the alternative hypothesis or NULL.}
\item{P.value }{the P-value or a statement like P < 0.001 or NULL.}
\item{p.value }{the P-value or NULL.}
\item{Level }{the confidence level.}
\item{Type }{the type of confidence interval.}
\item{Confidence.interval }{the confidence interval.}
\item{cor.ana }{a logical; always FALSE for this function.}
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\examples{
# Lot size, house size, and value for a sample of homes in a particular area.
data("homes")
str(homes)
attach(homes)

# 95% (default) lower confidence bound for the slope of the population regression
# line relating lot size and value, a right-tailed test with null hypothesis 0,
# and 999 bootstrap replications.
boot.slope.bca(LOT.SIZE, VALUE, null.hyp = 0, alternative = "greater", R = 999)

# 90% two-sided confidence interval for the slope of the population regression line
# relating house size and value, a right-tailed test with null hypothesis 0, and
# 999 bootstrap replications.
boot.slope.bca(HOUSE.SIZE, VALUE, null.hyp = 0, alternative = "greater",
conf.level = 0.90, type = "two-sided", R = 999)

detach(homes) # clean up
}

\concept{Bootstrap}
\concept{BCa bootstrap}
\concept{Simple linear regression}
\concept{Confidence interval}
\concept{Hypothesis test}
\concept{Inferences for the slope of a population regression line}
