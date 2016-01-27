\name{boot.one.per}
\alias{boot.one.per}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Percentile Bootstrap One-Sample Test and CI
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Obtains a confidence interval and (optionally) performs a hypothesis test
for one population mean, median, proportion, standard deviation, or
user-defined function such as a trimmed mean, using the percentile bootstrap
method.
}

\usage{
boot.one.per(x, parameter, null.hyp = NULL,
             alternative = c("two.sided", "less", "greater"),
             conf.level = 0.95, type = NULL, R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a (non-empty) numeric vector of data values.}
  \item{parameter}{
%%     ~~Describe \code{parameter} here~~
the parameter under consideration.}
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
a character string specifying the type of CI; if user-supplied, must be one of
"two-sided", "upper-bound", or "lower-bound"; defaults to "two-sided" if alternative
is "two.sided", "upper-bound" if alternative is "less", and "lower-bound"
if alternative is "greater".}
  \item{R}{
%%     ~~Describe \code{R} here~~
the number of bootstrap replications; default is 9999.}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
For a proportion, the data must consist of 1s and 0s, with 1 corresponding to a
success.
}

\value{A list with class "boot.one" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Boot.values }{the point estimates for the parameter obtained from the bootstrap.}
\item{Confidence.limits }{the confidence limit(s) for the confidence interval.}
\item{Header }{the main title for the output.}
\item{Variable }{the name of the variable under consideration.}
\item{n }{the sample size.}
\item{Statistic }{the name of the statistic.}
\item{Observed }{the observed point estimate for the parameter.}
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
This routine should be used only when bias is small and the sampling distribution is
roughly symmetric, as indicated by the output of the bootstrap. Otherwise, use the
BCa version.
}

\examples{
# Losses ($) for a sample of 25 pickpocket offenses.
data("loss")
str(loss)

# 95% (default) confidence interval for the mean loss of all pickpocket offenses.
boot.one.per(loss, mean)

# 95% (default) lower confidence bound for the mean loss of all pickpocket
# offenses, and a right-tailed test with null hypothesis 500.
boot.one.per(loss, mean, null.hyp = 500, alternative = "greater")

# 90% two-sided confidence interval for the mean loss of all pickpocket
# offenses, and a right-tailed test with null hypothesis 500.
boot.one.per(loss, mean, null.hyp = 500, alternative = "greater", conf.level = 0.90,
type = "two-sided")

# 95% (default) confidence interval for the standard deviation of losses of all
# pickpocket offenses.
boot.one.per(loss, sd)
# See the preceeding warning!

# 95% (default) confidence interval for the 20% trimmed mean.
twen.tm <- function(x) mean(x, trim = 0.20)
boot.one.per(loss, twen.tm)
}

\concept{Bootstrap}
\concept{Percentile bootstrap}
\concept{One-sample inferences}
\concept{Confidence interval}
\concept{Hypothesis test}
\concept{Inferences for one mean}
\concept{Inferences for one standard deviation}
\concept{Inferences for one proportion}