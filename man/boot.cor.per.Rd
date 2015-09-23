\name{boot.cor.per}
\alias{boot.cor.per}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Percentile Bootstrap Correlation Test and CI
%%  ~~function to do ... ~~
}

\description{Obtains a confidence interval and (optionally)
performs a hypothesis test for the Pearson correlation, using
the percentile bootstrap method.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}

\usage{
boot.cor.per(x, y, null.hyp = NULL,
             alternative = c("two.sided", "less", "greater"),
             conf.level = 0.95, type = NULL, R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a (non-empty) numeric vector of data values.}
  \item{y}{
%%     ~~Describe \code{y} here~~
a (non-empty) numeric vector of data values.}
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
a character string specifying the type of CI; if user-supplied, must be
one of "two-sided", "upper-bound", or "lower-bound"; defaults to "two-sided"
if alternative is "two.sided", "upper-bound" if alternative is "less", and
"lower-bound" if alternative is "greater".}
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
\item{Boot.values }{the point estimates (correlations) obtained from the bootstrap.}
\item{Confidence.limits }{the confidence limit(s) for the confidence interval.}
\item{Header }{the main title for the output.}
\item{Variable.1 }{the first variable.}
\item{Variable.2 }{the second variable.}
\item{n }{the sample size.}
\item{Statistic }{the name of the statistic, here correlation.}
\item{Observed }{the observed point estimate (correlation).}
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
\item{cor.ana }{a logical; always TRUE for this function.}
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\section{Warning }{
This routine should be used only when bias is small and the sampling distribution
is roughly symmetric, as indicated by the output of the bootstrap. Otherwise, use
the BCa version.}

\examples{
# NOTE: See the preceding warning!

# Lot size, house size, and value for a sample of homes in a particular area.
data("homes")
str(homes)
attach(homes)

# 95% (default) confidence interval for the correlation between lot size and value.
boot.cor.per(LOT.SIZE, VALUE)

# 95% (default) lower confidence bound for the correlation between house size
# and value, and a right-tailed test with null hypothesis 0.5.
boot.cor.per(HOUSE.SIZE, VALUE, null.hyp = 0.5, alternative = "greater")

# 90% two-sided confidence interval for the correlation between house size and value,
# a right-tailed test with null hypothesis 0.5, and 999 bootstrap replications.
boot.cor.per(HOUSE.SIZE, VALUE, null.hyp = 0.5, alternative = "greater",
conf.level = 0.90, type = "two-sided", R = 999)

detach(homes) # clean up
}

\concept{Bootstrap}
\concept{Percentile bootstrap}
\concept{Simple linear regression}
\concept{Confidence interval}
\concept{Hypothesis test}
\concept{Pearson correlation} 

