\name{boot.two.per}
\alias{boot.two.per}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Percentile Bootstrap Independent Two-Samples Test and CI
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Obtains an independent-samples confidence interval and (optionally) performs
an independent-samples hypothesis test for the difference between two
population means, medians, proportions, or some user-defined function, using
the percentile bootstrap method.
}

\usage{
boot.two.per(x, y, parameter, stacked = TRUE, variable = NULL,
             null.hyp = NULL, alternative = c("two.sided", "less", "greater"),
             conf.level = 0.95, type = NULL, R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector of observations of the variable (stacked case) or
a numeric vector of data values representing the first of the two
samples (unstacked case).}
  \item{y}{
%%     ~~Describe \code{y} here~~
a vector of corresponding population identifiers (stacked case) or
a numeric vector of data values representing the second of the two
samples (unstacked case). }
  \item{parameter}{
%%     ~~Describe \code{parameter} here~~
the parameter under consideration.}
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

\value{A list with class "boot.two" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Stacked }{a logical indicating whether the data are stacked (TRUE) or not (FALSE).}
\item{Boot.values }{the point estimates for the difference between the parameter values obtained from the bootstrap.}
\item{Confidence.limits }{the confidence limit(s) for the confidence interval.}
\item{Parameter }{the parameter under consideration.}
\item{Header }{the main title for the output.}
\item{Variable }{the name of the variable under consideration or NULL.}
\item{Pop.1 }{the first population.}
\item{Pop.2 }{the second population.}
\item{n.1 }{the sample size for the first population.}
\item{n.2 }{the sample size for the second population.}
\item{Statistic }{the name of the statistic.}
\item{Observed.1 }{the observed point estimate for the parameter value of the first population.}
\item{Observed.2 }{the observed point estimate for the parameter value of the second population.}
\item{Observed }{the observed point estimate for the difference between the parameter values.}
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
# Driving distances, in yards, for independent samples of drives off a
# 2-3/4" wooden tee and off a 3" Stinger Competition golf tee.
data("tees")
str(tees)
attach(tees)
# Note that the data are unstacked.

# 99% confidence interval for the difference between the mean driving
# distances of the two types of tees. Name variable DISTANCE.
boot.two.per(REGULAR, STINGER, mean, stacked = FALSE, variable = "DISTANCE",
conf.level = 0.99)

# 95% (default) upper confidence bound for the difference between the mean
# driving distances of the two types of tees, a left-tailed test with null
# hypothesis -10 (i.e., the difference between the mean driving distances
# is -10 yards), and 99999 bootstrap replications. 
boot.two.per(REGULAR, STINGER, mean, stacked = FALSE, null.hyp = -10,
alternative = "less", R = 99999)

# 95% (default) confidence interval for the difference between the standard
# deviations of the driving distances, and a two-tailed test with null
# hypothesis 0 (i.e., the standard deviations are equal). Name variable DISTANCE.
boot.two.per(REGULAR, STINGER, sd, stacked = FALSE, variable = "DISTANCE", null.hyp = 0) 

detach(tees)  # clean up
}

\concept{Bootstrap}
\concept{Percentile bootstrap}
\concept{Independent-samples inferences}
\concept{Confidence interval}
\concept{Hypothesis test}
\concept{Inferences for two means}
\concept{Inferences for two standard deviations}
\concept{Inferences for two proportions}