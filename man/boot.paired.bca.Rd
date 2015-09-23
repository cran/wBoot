\name{boot.paired.bca}
\alias{boot.paired.bca}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
BCa Bootstrap Paired-Samples Test and CI for Two Means
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Obtains a paired-samples confidence interval and (optionally) performs a
paired-samples hypothesis test for the difference between two population
means, using the BCa bootstrap method.
}

\usage{
boot.paired.bca(x, y, variable = NULL, null.hyp = NULL,
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
  \item{variable}{
%%     ~~Describe \code{variable} here~~
an optional character string that gives the name of the variable under consideration.}
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
Note that \code{x} and \code{y} must have the same length, as together they represent
the paired data. Also note, for instance, that \code{alternative = "greater"} is the
alternative that \code{x} variable has a larger mean than \code{y} variable.
}

\value{A list with class "boot.paired" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Boot.values }{the point estimates for the differences between the means obtained from the bootstrap.}
\item{Confidence.limits }{the confidence limit(s) for the confidence interval.}
\item{Header }{the main title for the output.}
\item{Variable }{the name of the variable under consideration or NULL}
\item{Pop.1 }{the first population.}
\item{Pop.2 }{the second population.}
\item{n }{the sample size.}
\item{Statistic }{the name of the statistic, here diff.mean.}
\item{Observed }{the observed point estimate for the difference between the means.}
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

\examples{
# The number of inappropriate words out of 10 that were identified in the
# Times New Roman (TNR) and Gigi fonts by each of 25 participants.
data("fonts")
str(fonts)
attach(fonts)

# 90% confidence interval for the difference between the mean number of
# inappropriate words out of 10 identified for the TNR and Gigi fonts.
boot.paired.bca(TNR, GIGI, conf.level = 0.90)

# A right-tailed test with null hypothesis 2, and a 95% (default) lower
# confidence bound for the difference between the mean number of
# inappropriate words out of 10 identified for the TNR and Gigi fonts. 
boot.paired.bca(TNR, GIGI, null.hyp = 2, alternative = "greater")
# Not significant at the 5% level.

# A right-tailed test with null hypothesis 1, and a 95% (default) lower
# confidence bound for the difference between the mean number of
# inappropriate words out of 10 identifiedd for the TNR and Gigi fonts.
boot.paired.bca(TNR, GIGI, null.hyp = 1, alternative = "greater")
# Significant at the 5% level.

detach(fonts)   # clean up
}

\concept{Bootstrap}
\concept{BCa bootstrap}
\concept{Paired-sample inferences}
\concept{Confidence interval}
\concept{Hypothesis test}
\concept{Inferences for two means}

