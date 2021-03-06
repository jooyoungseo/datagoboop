% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/note.R
\name{note}
\alias{note}
\alias{notes}
\title{Note: play a pitch

Turns piano key number into playable wave.  (use \code{note()} for a single piano key; use \code{notes()} for a sequence)}
\usage{
note(
  pkey,
  vol = 1,
  dur = 1,
  fs = 44100,
  inst_lab = "sine",
  decay = FALSE,
  decay_rate = 6
)

notes(
  pkey,
  vol = 1,
  dur = 1,
  fs = 44100,
  inst_lab = "sine",
  decay = FALSE,
  decay_rate = 6,
  progbar = TRUE
)
}
\arguments{
\item{pkey}{numeric: pitch expressed in piano key numbers (ideal piano).  40 corresponds to middle C / C4.}

\item{vol}{numeric: relative volume of the sound, 1 is the maximum for a clear sound.}

\item{dur}{integer: duration of the sound in seconds.}

\item{fs}{integer: sampling rate (default: \code{44100}.  Sampling rate is dependent on user audio system, typically 44100 or 48000).}

\item{inst_lab}{string: instrument used.  Valid input: \code{"sine"} (default), \code{"piano"}, \code{"string"}, \code{"wind"}, \code{"bass"}, or label for sound created using \code{add_inst()}}

\item{decay}{logical: if \code{TRUE}, volume of individual notes decays over duration of note (default: \code{FALSE})}

\item{decay_rate}{numeric: The decay rate of the sound. Larger -> Faster decay. (negative numbers result in sound growing louder over duration of note)}

\item{progbar}{logical: display progress bar (default: \code{TRUE})}
}
\value{
dur*fs length numeric vector
}
\description{
Note: play a pitch

Turns piano key number into playable wave.  (use \code{note()} for a single piano key; use \code{notes()} for a sequence)
}
\section{Functions}{
\itemize{
\item \code{notes}: vectorized version of note()
}}

\examples{
\dontrun{
wplay(note(40))
wplay(notes(40, 44, 47))
}
}
