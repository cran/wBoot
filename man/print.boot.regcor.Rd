\name{print.boot.regcor}
\alias{print.boot.regcor}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Print Output for Class "\code{boot.regcor}"
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This is a method for the function \code{print()} to print objects of class "\code{boot.regcor}".
}

\usage{
  \method{print}{boot.regcor}(x, \dots)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
    an object of class "\code{boot.regcor}".}
  \item{\dots}{
    further arguments passed to or from other methods.}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
This print method summarizes and formats for easy reading the results of a bootstrap
function with output list of class "\code{boot.regcor}".
}

\value{
The \code{boot.regcor} object is returned invisibly.
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{boot.cond.mean.bca}}, \code{\link{boot.cond.mean.per}}, 
\code{\link{boot.cor.bca}}, \code{\link{boot.cor.per}},
\code{\link{boot.slope.bca}}, \code{\link{boot.slope.per}}
}
