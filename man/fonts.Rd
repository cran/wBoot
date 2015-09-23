\name{fonts}
\alias{fonts}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
Times New Roman and Gigi Font Data
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
The number of inappropriate words out of 10 that were identified in the TNR
and Gigi fonts by each of 25 participants.
}

\usage{data("fonts")}

\format{
  A data frame with 25 observations on the following 2 variables.
  \describe{
    \item{\code{TNR}}{a numeric vector}
    \item{\code{GIGI}}{a numeric vector}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
In the online paper cited below, researchers S. Morrison and J. Noyes
studied whether the type of font used in a document affects reading
speed or comprehension. The fonts used for the comparisons were the
serif font Times New Roman (TNR) and a more ornate sans serif font
called Gigi. There were 10 substitution words used for testing the
comprehensibility of the two fonts. The substitution words were
inappropriate to the context of the passage and varied grammatically
from the original words in the paragraphs. The "fonts" dataset gives
the number of inappropriate words out of the 10 that were identified
in the TNR and Gigi fonts by each of the 25 participants.
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Morrison, S. and Noyes, J. (2003) A Comparison of Two Computer Fonts:
Serif versus Ornate Sans Serif. \emph{Usability News}, \strong{5.3}.
}

\examples{
data(fonts)
str(fonts)
boxplot(fonts)
attach(fonts)
detach(fonts)
}

\keyword{datasets}
