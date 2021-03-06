% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/praat.R
\name{praat_run}
\alias{praat_run}
\title{Run a Praat script.}
\usage{
praat_run(script, ..., capture = FALSE)
}
\arguments{
\item{script}{A character vector containing the script name.}

\item{...}{List of arguments to be passed to the script.}

\item{capture}{If set to \code{TRUE}, the standard output of the script (for
example, from \code{writeInfo}) can be saved into a variable in R. If
\code{FALSE} (the default) the output is logged to the console.}
}
\value{
If the Praat script returns standard output this is returned as a
  character vector. Also, if the script has instructions to create files,
  these will be created.
}
\description{
It runs a Praat script, with optional arguments passed to the script.
}
\examples{
\dontrun{
script <- system.file("extdata", "get-formants.praat", package = "speakr")

# Run get-formants.praat with argument "Hertz" and log to console.
praat_run(script, "Hertz")

# Run get-formants.praat with arguments and save in R variable.
library(readr)
formants <- praat_run(script, "Hertz", 0.03, capture = TRUE) \%>\%
  read_csv()
}

}
