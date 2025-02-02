% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/permute.R
\name{permute}
\alias{permute}
\alias{permute2}
\title{Permute}
\usage{
permute(taxa, envs, sid)

permute2(..., minTaxonFreq = 3L, trys = 100L)
}
\arguments{
\item{taxa}{a list of \code{data.frame}s with the taxa.  See Details.}

\item{envs}{a list of \code{data.frame}s with the environmental gradients. See
Details}

\item{sid}{a character vector of length one with the name of the column
identifying the station id.}

\item{...}{passed to permute}

\item{minTaxonFreq}{min number of occurrences for each taxon}

\item{trys}{maximum number of attempts to generate a meaningful permutation}
}
\value{
A list of lists of lists.  At the top level the elements are the treatment
groups.  There are as many elements as the length of the lists taxa and envs.

The second level are the taxa and environmental gradient.
}
\description{
Permute treatment labels for a taxa and associated environmental gradients.
}
\details{
The taxa and envs lists are expected to be of equal length and that the ith
element of taxa list is associated with the ith element of the envs list.
That is, the taxa and environmental gradient for treatment 1 are both the
first elements of the respective lists, the taxa and environmental gradient
for treatment 2 are the second elements for the respective lists, etc.

The environmental gradient data.frames are expected to have two columns, one
with the station ID and one with the data defining the gradient.

The taxa data.frames are expected to have the station ID column as well.
\strong{Important} The station ID column name needs to be the same for all the
taxa and environmental gradient data.frames.
}
\examples{

example_permutation <-
 permute(taxa = list(CD_06_Mall_wID, CN_06_Mall_wID),
         envs = list(C_IC_D_06_wID, C_IC_N_06_wID),
         sid  = "StationID")
str(example_permutation, max.level = 2)

}
\seealso{
\code{vignette(topic = "pTITAN2", package = "pTITAN2")}
}
