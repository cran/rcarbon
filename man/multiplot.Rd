% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{multiplot}
\alias{multiplot}
\title{Plot multiple dates}
\usage{
multiplot(
  x,
  type = "d",
  calendar = "BP",
  HPD = FALSE,
  credMass = 0.95,
  decreasing = NULL,
  label = TRUE,
  label.pos = 0.5,
  label.offset = 0,
  xlim = NULL,
  xlab = NA,
  ylab = NA,
  col.fill = "grey50",
  col.fill2 = "grey82",
  col.line = "black",
  lwd = 1,
  cex.id = 1,
  cex.lab = 1,
  cex.axis = 1,
  ydisp = FALSE,
  gapFactor = 0.2,
  rescale = FALSE
)
}
\arguments{
\item{x}{A CalDates class object with length > 1.}

\item{type}{Whether the calibrated dates are displayed as distributions (\code{'d'}) or as horizontal bars (\code{'b'}) spanning the HPD interval. Default is \code{'d'}.}

\item{calendar}{Either \code{'BP'} or \code{'BCAD'}. Indicate whether the calibrated date should be displayed in BP or BC/AD. Default is  \code{'BP'}.}

\item{HPD}{Logical value indicating whether intervals of higher posterior density should be displayed. Default is FALSE.}

\item{credMass}{A numerical value indicating the size of the higher posterior density interval. Default is 0.95.}

\item{decreasing}{Whether dates should be plotted with decreasing order of median calibrated date (i.e. old to new; TRUE) or increasing order (i.e. new to old; FALSE). If set to NULL the dates plotted in the supplied order. Default is NULL}

\item{label}{Whether the ID of each date should be displayed. Default is TRUE.}

\item{label.pos}{Relative position of the label in relation to the calibrated distribution expressed in quantiles. Default is 0.5 (median).}

\item{label.offset}{Horrizontal offset of label position in number of years. Default is 0.}

\item{xlim}{the x limits of the plot. In BP or in BC/AD depending on the choice of the parameter \code{calender}. Notice that if BC/AD is selected BC ages should have a minus sign (e.g. \code{c(-5000,200)} for 5000 BC to 200 AD).}

\item{xlab}{(optional) Label for the x axis. If unspecified the default setting will be applied ("Year BP" or "Year BC/AD").}

\item{ylab}{(optional) Label for the y axis.}

\item{col.fill}{A vector of primary fill color for the calibrated date distribution. Default is 'grey50'.}

\item{col.fill2}{A vector of secondary secondary colour fill color for the calibrated date distribution, used for regions outside the higher posterior interval. Ignored when \code{HPD=FALSE}. Default is 'grey82'.}

\item{col.line}{A vector of line color (ignored when \code{type} is set to \code{'d'}. Default is 1.}

\item{lwd}{Line width (ignored when \code{type} is set to \code{'d'}). Default is 1.}

\item{cex.id}{The magnification to be used the date labels relative to the current setting of cex. Default is adjusted to 1.}

\item{cex.lab}{The magnification to be used for x and y  labels relative to the current setting of cex. Default is adjusted to 1.}

\item{cex.axis}{The magnification to be used for axis annotation relative to the current setting of cex. Default is adjusted to 1.}

\item{ydisp}{Whether the y axis should be displayed. Ignored when \code{type} is set to \code{'b'}. Default is FALSE}

\item{gapFactor}{Defines spacing between calibrated dates (when \code{type} is set to \code{'d'}) or the distance between the lines and the labels (when \code{type} is set to \code{'b'}) as proportion of individual y-axis ranges. Default is 0.2.}

\item{rescale}{Whether probability distributions should be rescaled (applicable only when \code{type} is set to \code{'d'}, default is FALSE).}
}
\description{
Plot multiple radiocarbon dates.
}
\examples{
data("emedyd")
tellaswad = subset(emedyd,SiteName=='Tell Aswad')
x = calibrate(tellaswad$CRA,tellaswad$Error,ids=tellaswad$LabID)
multiplot(x,HPD=TRUE,decreasing=TRUE,label=FALSE,gapFactor = 0.1)
multiplot(x,type='b',calendar='BCAD',cex.id = 0.5,lwd=2,gapFactor = 0.5)
}
\seealso{
\code{\link{calibrate}}
}
