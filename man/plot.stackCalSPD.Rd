% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plot.stackCalSPD}
\alias{plot.stackCalSPD}
\title{Plot a stack of SPDs}
\usage{
\method{plot}{stackCalSPD}(
  x,
  type = "stacked",
  calendar = "BP",
  spdnormalised = FALSE,
  rescale = FALSE,
  runm = NA,
  xlim = NA,
  ylim = NA,
  xaxt = "s",
  yaxt = "s",
  gapFactor = 0.2,
  col.fill = NA,
  col.line = NA,
  lwd.obs = 1,
  lty.obs = 1,
  cex.lab = 1,
  cex.axis = cex.lab,
  legend = TRUE,
  legend.arg = NULL,
  ylab = NA,
  ymargin = 1.1,
  rnd = 2,
  ...
)
}
\arguments{
\item{x}{A \code{stackCalSPD} class object. Result of \code{\link{stackspd}} function.}

\item{type}{How to display the SPDs.Current options are \code{'stacked'},\code{'lines'}, '\code{'proportion'}. and \code{'multipanel'}. Default is \code{'stacked'}.}

\item{calendar}{Either \code{'BP'} or \code{'BCAD'}. Indicate whether the calibrated date should be displayed in BP or BC/AD. Default is  \code{'BP'}.}

\item{spdnormalised}{A logical variable indicating whether the total probability mass of the SPDs are normalised to sum to unity. Default is FALSE.}

\item{rescale}{A logical variable indicating whether the summed probabilities values should be rescaled to range 0 to 1. Default is FALSE.Notice that this is different from setting \code{spdnormalised} to TRUE.}

\item{runm}{A number indicating the window size of the moving average to smooth the SPD. If set to \code{NA} no moving average is applied. Default is NA}

\item{xlim}{the x limits of the plot. In BP or in BC/AD depending on the choice of the parameter \code{calender}. Notice that if BC/AD is selected BC ages should have a minus sign (e.g. \code{c(-5000,200)} for 5000 BC to 200 AD).}

\item{ylim}{the y limits of the plot.}

\item{xaxt}{Whether the x-axis tick marks should be displayed (\code{xaxt='s'}, default) or not (\code{xaxt='n'}).}

\item{yaxt}{Whether the y-axis tick marks should be displayed (\code{xaxt='s'}, default) or not (\code{xaxt='n'}).}

\item{gapFactor}{Defines spacing between SPDs as proportion of the y-axis range for multipanel plots. Default is 0.2.}

\item{col.fill}{Vector of fill color for the observed SPDs. The default color scheme is based on the Dark2 pallette of RColorBrewer package.}

\item{col.line}{Line colour for the observed SPDs.The default color scheme is based on the Dark2 palette of RColorBrewer package.}

\item{lwd.obs}{Line width for the observed SPDs. Default is 1.}

\item{lty.obs}{Line type for the observed SPDs. Default is 1.}

\item{cex.lab}{The magnification to be used for x and y  labels relative to the current setting of cex. Default is adjusted to 1.}

\item{cex.axis}{The magnification to be used for axis annotation relative to the current setting of cex. Default is adjusted to 1.}

\item{legend}{Whether legend needs to be displayed. Item names will be retrieved from the values supplied in the argument \code{group} in \code{\link{stackspd}}. Default is TRUE.}

\item{legend.arg}{list of additional arguments to pass to \code{\link{legend}}; names of the list are used as argument names. Only used if \code{legend} is set to TRUE. If supplied legend position must be given (e.g. \code{legend.arg=list(x='bottomright')}.}

\item{ylab}{a title for the y axis}

\item{ymargin}{multiplier for the maximum value on ylim range. Default is 1.1.}

\item{rnd}{integer indicating the number of decimal places to be displayed in the y-axis for when \code{type} is set "multitype".}

\item{...}{Additional arguments affecting the plot.}
}
\description{
Visualises multiple SPDs grouped as a \code{stackCalSPD} object.
}
\details{
The display order of the SPDs is given by the factor levels of the user-supplied \code{group} argument in the \code{stackspd()} function.
}
\examples{
\dontrun{
data(emedyd)
x = calibrate(x=emedyd$CRA, errors=emedyd$Error,normalised=FALSE)
bins = binPrep(sites=emedyd$SiteName, ages=emedyd$CRA,h=100)
res = stackspd(x=x,timeRange=c(16000,8000),bins=bins,group=emedyd$Region)
plot(res,type='stacked')
plot(res,type='lines')
plot(res,type='proportion')
plot(res,type='multipanel')
}
}
\references{
Erich Neuwirth (2014). RColorBrewer: ColorBrewer Palettes. R package version 1.1-2. \url{https://CRAN.R-project.org/package=RColorBrewer}.
}
