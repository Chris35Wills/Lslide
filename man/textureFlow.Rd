% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/textureFlow.R
\name{textureFlow}
\alias{textureFlow}
\title{Calculation of textural features in flow direction}
\usage{
textureFlow(grass.texture.flowDir, grass.texture.input,
  saga.texture.shape = NULL, saga.texture.statistic = NULL,
  grass.texture.window = 3, quiet = TRUE, show.output.on.console = FALSE,
  grass.texture.distance = 1,
  grass.texture.method = "contrast,corr,var,sa,entr",
  grass.texture.name = c("_Contr_", "_Corr_", "_Var_", "_SA_", "_Entr_"),
  grass.categories.rules = "rules_texture", grass.texture.save = FALSE,
  grass.texture.save.path = tempdir(),
  texture.output.name = c("textureFlowDir", "textureFlowDirPer"))
}
\arguments{
\item{grass.texture.flowDir}{full path to flow direction raster which must be performed by the D-Infinity method of TauDEM. Moreover, the angles must be in degree and already rotated (clockwise, NORTH 0°)}

\item{grass.texture.input}{GRASS GIS raster on which the textural features are computed (commonly a DTM). Therefore, the input must be already imported or created in GRASS GIS}

\item{saga.texture.shape}{full path of shapefile for the computation of grid statistics. Default: NULL}

\item{saga.texture.statistic}{full storing path of shapefile with object statistics. Default: NULL}

\item{grass.texture.window}{window size for the computation of textural features. Default: 3}

\item{quiet}{no outputs in console. Default: TRUE}

\item{show.output.on.console}{show output of GRASS and SAGA GIS modules on console. Default: FALSE}

\item{grass.texture.distance}{distance between two samples. The distance must be smaller than the size of the moving window (>= 1). Default: 1}

\item{grass.texture.method}{the textural features that the user wants to compute. Default: "contrast,corr,var,sa,entr"}

\item{grass.texture.name}{name of texture for automatism. Number and names must fit to \emph{grass.texture.method}. Default: c("_Contr_", "_Corr_", "_VAR_", "_SA_", "_Entr_")}

\item{grass.categories.rules}{full stroing path of ruleset for reclassification of TauDEM flow direction. Default: tempdir() + rules_texture}

\item{grass.texture.save}{possibility to save texture in flow direction as .tif. Default: FALSE (tif's are removed at the end)}

\item{grass.texture.save.path}{(optional) output path of texture calculated in flow direction. Outputs are in .tif format. Default: tempdir()}

\item{texture.output.name}{vector containing names for texture output, [1] for flow direction, [2] for perpendicular flow direction. Information on window size  is automatically added after "_". Default: c("textureFlowDir", "textureFlowDirPer")}

\item{grass.texture.statistics}{.csv with shapefile attributes including texture statistics}
}
\value{
(optional) \linkS4class{data.table} with texture statistics of shapefile input
}
\description{
This function calculates textural features in flow direction according to STUMPF & KERLE (2011)
}
\note{
\itemize{
  \item the textural features MOC-1 and MOC-2 are not supported, yet
  \item calculation of textures is for all directions separately
  \item GRASS GIS session (mapset, location and raster for texture) must have been initialized before
  \item GRASS GIS texture orientations are counter-clockwise beginning from EAST, but output is calculated clockwise beginning from NORTH
  \item TO DO: ratio of texture in flow direction to texture in perpendicular flow direction
  \item STUMPF, A. & N. KERLE (2011): Object-oriented mapping of landslides using Random Forests. - Remote Sensing of Environment 115, 10, 2564-2577
}
}
\keyword{GIS,}
\keyword{GRASS}
\keyword{direction}
\keyword{features,}
\keyword{flow}
\keyword{in}
\keyword{textural}
\keyword{texture}
