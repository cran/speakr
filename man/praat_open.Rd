% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/praat.R
\name{praat_open}
\alias{praat_open}
\title{Open files with Praat.}
\usage{
praat_open(...)
}
\arguments{
\item{...}{A character vector with the path to the file. Include multiple vector
arguments to open multiple files.}
}
\value{
Nothing. Used for its side effects.
}
\description{
It opens a file or list of files in the Praat GUI.
}
\examples{
\dontrun{
# Open a single file

script <- system.file("extdata", "get-formants.praat", package = "speakr")
praat_open(script)

# Open multiple files

wav <- system.file("extdata", "vowels.wav", package = "speakr")
tg <- system.file("extdata", "vowels.TextGrid", package = "speakr")
praat_open(wav, tg)
}

}
