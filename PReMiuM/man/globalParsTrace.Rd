\name{globalParsTrace}
\alias{globalParsTrace}
\title{Plot of the trace of some of the global parameters}
\description{Function to lot the trace of some global parameters}
\usage{
globalParsTrace(runInfoObj, parameters = "nClusters",plotBurnIn=FALSE,whichBeta=1)
}
\arguments{
This function allows to visualise the trace of the global parameters. 

Note that this function has not been optimised for large datasets. 

\item{runInfoObj}{An object of class runInfoObj.}
\item{parameters}{The parameter whose trace will be plotted. This can be set equal to "nClusters" (default), "alpha", "mmp" and "beta", as by the model. As beta can be a vector, we advise to also set the option "whichBeta" below to select which fixed effect parameter to visualise in the plot.}
\item{plotBurnIn}{Set to FALSE (default) it does not plot the trace for the burn in period. Set to TRUE it plots the trace including the burn in period.}
\item{whichBeta}{Integer which selects which fixed effect parameter is plotted.}
}
\value{
Plot of trace of some global parameters.
}
\section{Authors}{

Silvia Liverani, Department of Epidemiology and Biostatistics, Imperial College London and MRC Biostatistics Unit, Cambridge, UK

Maintainer: Silvia Liverani <liveranis@gmail.com>
}
\references{

Liverani, S., Hastie, D. I., Azizi, L., Papathomas, M. and Richardson, S. (2013) PReMiuM: An R package for Profile Regression Mixture Models using Dirichlet Processes. \emph{Submitted}. Available at http://uk.arxiv.org/abs/1303.2836

}
\examples{

# generate simulated dataset
generateDataList <- clusSummaryBernoulliDiscreteSmall()
inputs <- generateSampleDataFile(generateDataList)

# run profile regression
runInfoObj<-profRegr(yModel=inputs$yModel, xModel=inputs$xModel, 
 nSweeps=10, nBurn=20, data=inputs$inputData, output="output", nFilter=3,
 covNames=inputs$covNames,nClusInit=15,reportBurnIn=FALSE,fixedEffectsNames = inputs$fixedEffectNames)

# plot trace for alpha
globalParsTrace(runInfoObj,par="alpha",plotBurnIn=FALSE)

}

