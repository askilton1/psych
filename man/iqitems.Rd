\name{iqitems}
\alias{iqitems}
\docType{data}
\title{16 multiple choice IQ items}
\description{16 multiple choice ability items taken from  the Synthetic Aperture Personality Assessment (SAPA) web based personality assessment project.  The data from 1525 subjects are included here as a demonstration set for scoring multiple choice inventories and doing basic item statistics. For more information on the development of an open source measure of cognitive ability, consult the readings available at the \url{personality-project.org}.  
}
\usage{data(iqitems)}
\format{
   A data frame with 1525 observations on the following 16 variables. The number following the name is the item number from SAPA.
  \describe{
    \item{\code{reason.4}}{Basic reasoning questions }
    \item{\code{reason.16}}{Basic reasoning question}
    \item{\code{reason.17}}{Basic reasoning question}
    \item{\code{reason.19}}{Basic reasoning question }   
     \item{\code{letter.7}}{In the following alphanumeric series, what letter comes next?}
    \item{\code{letter.33}}{In the following alphanumeric series, what letter comes next?}
    \item{\code{letter.34}}{In the following alphanumeric series, what letter comes next}
    \item{\code{letter.58}}{In the following alphanumeric series, what letter comes next?}
    \item{\code{matrix.45}}{A matrix reasoning task}
    \item{\code{matrix.46}}{A matrix reasoning task}
    \item{\code{matrix.47}}{A matrix reasoning task}
    \item{\code{matrix.55}}{A matrix reasoning task}
    \item{\code{rotate.3}}{Spatial Rotation of type 1.2}
    \item{\code{rotate.4}}{Spatial Rotation of type 1.2}
     \item{\code{rotate.6}}{Spatial Rotation of type 1.1}
    \item{\code{rotate.8}}{Spatial Rotation of type 2.3}
  }
}
\details{16 items were sampled from 80 items given as part of the SAPA (\url{http://sapa-project.org}) project  (Revelle, Wilt and Rosenthal, 2009; Condon and Revelle, 2014) to develop online measures of ability. These 16 items reflect four lower order factors (verbal reasoning, letter series, matrix reasoning, and spatial rotations.  These lower level factors all share a higher level factor ('g').  

This data set and the associated data set (\code{\link{ability}} based upon scoring these multiple choice items and converting them to correct/incorrect may be used to demonstrate item response functions, \code{\link{tetrachoric}} correlations, or \code{\link{irt.fa}} as well as \code{\link{omega}} estimates of of reliability and hierarchical structure.

In addition, the data set is a good example of doing item analysis to examine the empirical response probabilities of each item alternative as a function of the underlying latent trait.  When doing this, it appears that two of the matrix reasoning problems do not have monotonically increasing trace lines for the probability correct.  At moderately high ability (theta = 1) there is a decrease in the probability correct from theta = 0 and theta = 2.
}
\source{ The example data set is taken from the Synthetic Aperture Personality Assessment personality and ability test at \url{http://sapa-project.org}.  The data were collected with David Condon from 8/08/12 to 8/31/12.
} 

\references{Revelle, William, Wilt, Joshua,  and Rosenthal, Allen (2010)  Personality and Cognition: The Personality-Cognition Link. In Gruszka, Alexandra  and Matthews, Gerald   and Szymura, Blazej (Eds.) Handbook of Individual Differences in Cognition: Attention, Memory and Executive Control, Springer. 

Condon, David and Revelle, William, (2014) The International Cognitive Ability Resource:  Development and initial validation of a public-domain measure. Intelligence, 43, 52-64.
}
\examples{
\dontrun{
data(iqitems)
iq.keys <- c(4,4,4, 6,  6,3,4,4,   5,2,2,4,   3,2,6,7)
score.multiple.choice(iq.keys,iqitems)   #this just gives summary statisics
#convert them to true false 
iq.scrub <- scrub(iqitems,isvalue=0)  #first get rid of the zero responses
iq.tf <-  score.multiple.choice(iq.keys,iq.scrub,score=FALSE) 
              #convert to wrong (0) and correct (1) for analysis
describe(iq.tf) 
#see the ability data set for these analyses
#now, for some item analysis
#iq.irt <- irt.fa(iq.tf)  #do a basic irt
#iq.sc <-score.irt(iq.irt,iq.tf)  #find the scores
#op <- par(mfrow=c(4,4))
#irt.responses(iq.sc[,1], iq.tf)  
#op <- par(mfrow=c(1,1))
}
}
\keyword{datasets}
