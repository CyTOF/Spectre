% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/do.prep.fsom.R
\name{do.prep.fsom}
\alias{do.prep.fsom}
\title{do.prep.fsom - Function to prepare a FlowSOM (fsom) object for alignment with CytoNorm}
\usage{
do.prep.fsom(dat, use.cols, sample.col, xdim, ydim, nClus, nCells, scale, seed)
}
\arguments{
\item{dat}{NO DEFAULT. data.table of the dataset you wish to run in FlowSOM.}

\item{use.cols}{NO DEFAULT. Vector of character etnries. Columns to use to calculate FlowSOM.}

\item{sample.col}{NO DEFAULT. Character, name of the column denoting samples}

\item{xdim}{DEFAULT = 5. Size of Y-axis of FlowSOM grid.}

\item{nClus}{DEFAULT = 10. Number of metaclusters. If set to 1, will map all cells to a single metacluster}

\item{nCells}{DEFAULT = NULL. Number of cells to downsample to, otherwise 'NULL' will use all available cells}

\item{scale}{DEFAULT = FALSE. Do features need to be scaled?}

\item{seed}{DEFAULT = 42. Seed for reproducibility.}
}
\value{
Returns a FlowSOM object.
}
\description{
This function allows you to prepare a FlowSOM (fsom) object for alignment with CytoNorm.
}
\examples{
ref.fsom <- do.prep.fsom()

}
\references{
Ashhurst, T. M., et al. (2019). \url{https://www.ncbi.nlm.nih.gov/pubmed/31077106}
}
\author{
Thomas M Ashhurst, \email{thomas.ashhurst@sydney.edu.au}
}
