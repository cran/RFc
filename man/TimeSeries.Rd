% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RFc.R
\name{TimeSeries}
\alias{TimeSeries}
\alias{fcTimeSeriesDaily}
\alias{fcTimeSeriesHourly}
\alias{fcTimeSeriesYearly}
\title{Fetches time series data for a set of locations}
\usage{
fcTimeSeriesYearly(variable, latitude, longitude, firstYear, lastYear,
  firstDay = 1, lastDay = 365, startHour = 0, stopHour = 23,
  url = "http://fetchclimate2.cloudapp.net/", dataSets = "ANY",
  reproduceFor = "NOW", verbose = F)

fcTimeSeriesDaily(variable, latitude, longitude, firstDay = 1,
  lastDay = 365, firstYear = 1961, lastYear = 1990, startHour = 0,
  stopHour = 23, url = "http://fetchclimate2.cloudapp.net/",
  dataSets = "ANY", reproduceFor = "NOW", verbose = F)

fcTimeSeriesHourly(variable, latitude, longitude, startHour, stopHour,
  firstYear = 1961, lastYear = 1990, firstDay = 1, lastDay = 365,
  url = "http://fetchclimate2.cloudapp.net/", dataSets = "ANY",
  reproduceFor = "NOW", verbose = F)
}
\arguments{
\item{variable}{An identifier of the variable to fetch. \cr
To get the list of available variables use `fcVariables()` function or see "Available data" section of documentaion}

\item{latitude}{A numeric vector. Latitudes of the point set to fetch values for}

\item{longitude}{A numeric vector. Longitudes of the point set to fetch values for}

\item{firstYear}{A numeric scalar. Temporal coverage definition: The lower bound of years over which the averaging is performed}

\item{lastYear}{A numeric scalar. Temporal coverage definition: The upper bound of years over which the averaging is performed}

\item{firstDay}{A numeric scalar. Temporal coverage definition: The lower bound of the days interval within each year over which the averaging is performed}

\item{lastDay}{A numeric scalar. Temporal coverage definition: The upper bound of the days interval within each year over which the averaging is performed}

\item{startHour}{A numeric scalar. Temporal coverage definition: The lower bound of the hours interval within each day over which the averaging is performed}

\item{stopHour}{A numeric scalar. Temporal coverage definition: The upper bound of the hours interval within each day over which the averaging is performed}

\item{url}{The URL of the service to query the data from}

\item{dataSets}{A character vector. An identifier of the data set to fetch the data from. The special value "ANY" enables data stitching from all available data sets.}

\item{reproduceFor}{A character scalar. A string containing the time for which the result must correspond. The format is "YYYY-MM-DD". The special value "NOW" fetch the data using the latest FetchClimate configuration available.}

\item{verbose}{A logical scalar. If set to TRUE the method outputs its actions verbosely}
}
\value{
A list. Contains the following entries: values, sd, provenance.
Each of entries have the following dimensions (using values as an example):
length(values) = point set count * time series length;
nrow(values) = point set count;
ncol(values) = time series length;
}
\description{
For a given set of geo-locations (lat - lon pairs) and given time interval the time series is formed by splitting the time interval either by years or by days or by hours
}
\section{Functions}{
\itemize{
\item \code{fcTimeSeriesYearly}: Yearly timeseries fetching

\item \code{fcTimeSeriesDaily}: Daily timeseries fetching

\item \code{fcTimeSeriesHourly}: Hourly timeseries fetching
}}
\examples{
#Fetching a whole year average time series
#(varing year one by one starting from 1950 till 2000 inclusevly)
#for a single geo point
fcTimeSeriesYearly(variable="airt",latitude=75.5, longitude=57.7,firstYear=1950,lastYear=2000)

#Fetching diurnal temperature variation (hourly time series) in Moscow for a July 2008
fcTimeSeriesHourly(variable="airt",latitude=55.5, longitude=37.3,
     firstDay=183,lastDay=213,
     firstYear=2008,lastYear=2008,
     startHour=0,stopHour=23)

}

