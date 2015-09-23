\name{boot.ratio.sd.per}
\alias{boot.ratio.sd.per}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Percentile Bootstrap Independent-Samples Test and CI for Two Standard Deviations
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Obtains an independent-samples confidence interval and (optionally)
performs an independent-samples hypothesis test for the ratio of two
population standard deviations, using the percentile bootstrap method.
}

\usage{
boot.ratio.sd.per(x, y, stacked = TRUE, variable = NULL, null.hyp = NULL,
                  alternative = c("two.sided", "less", "greater"),
                  conf.level = 0.95, type = NULL, R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector of observations of the variable (stacked case) or a
numeric vector of data values representing the first of the two
samples (unstacked case).}
  \item{y}{
%%     ~~Describe \code{y} here~~
a vector of corresponding population identifiers (stacked case) or a
numeric vector of data values representing the second of the two
samples (unstacked case).}
  \item{stacked}{
%%     ~~Describe \code{stacked} here~~
a logical value (default TRUE) indicating whether the data are stacked.}
  \item{variable}{
%%     ~~Describe \code{variable} here~~
an optional string that gives the name of the variable under consideration;
ignored if stacked is TRUE.}
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
a character string specifying the type of CI; if user supplied, must be one
of "two-sided", "upper-bound", or "lower-bound"; defaults to "two-sided" if
alternative is "two.sided", "upper-bound" if alternative is "less", and
"lower-bound" if alternative is "greater".}
  \item{R}{
%%     ~~Describe \code{R} here~~
the number of bootstrap replications; default is 9999.}
}

\value{A list with class "boot.two" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Stacked }{a logical indicating whether the data are stacked (TRUE) or not (FALSE).}
\item{Boot.values }{the point estimates for the ratio of the standard deviations obtained from the bootstrap.}
\item{Confidence.limits }{the confidence limit(s) for the confidence interval.}
\item{Parameter }{the parameter under consideration, here standard deviation.}
\item{Header }{the main title for the output.}
\item{Variable }{the name of the variable under consideration or NULL}
\item{Pop.1 }{the first population.}
\item{Pop.2 }{the second population.}
\item{n.1 }{the sample size for the first population.}
\item{n.2 }{the sample size for the second population.}
\item{Statistic }{the name of the statistic, here ratio.sd.}
\item{Observed.1 }{the observed point estimate for the standard deviation of the first population.}
\item{Observed.2 }{the observed point estimate for the standard deviation of the second population.}
\item{Observed }{the observed point estimate for the ratio of the two standard deviations.}
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
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\section{Warning }{
This routine should be used only when bias is small and the sampling distribution
is roughly symmetric, as indicated by the output of the bootstrap. Otherwise, use
the BCa version.
}

\examples{
# Elmendorf tear strengths, in grams, for independent samples of
# Brand A and Brand B vinyl floor coverings.
data("elmendorf")
str(elmendorf)
attach(elmendorf)
# Note that the data are stacked.

# 90% confidence interval for the ratio of the population standard
# deviations of tear strength for Brands A and B.
boot.ratio.sd.per(STRENGTH, BRAND, conf.level = 0.90)
# See the preceeding warning!

# 95% (default) confidence interval for the ratio of the population
# standard deviations of tear strength for Brands A and B, and a
# two-tailed hypothesis test with null hypothesis 1 (i.e., the
# population standard deviations are equal).
boot.ratio.sd.per(STRENGTH, BRAND, null.hyp = 1)
# See the preceeding warning!

detach(elmendorf)  # clean up
}

\concept{Bootstrap}
\concept{Percentile bootstrap}
\concept{Independent-samples inferences}
\concept{Confidence interval}
\concept{Hypothesis test}
\concept{Inferences for two standard deviations}
