% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RFc.R
\name{fcVariables}
\alias{fcVariables}
\title{Fetches information about available variables}
\usage{
fcVariables(url = "http://fetchclimate2.cloudapp.net/", timestamp = "NOW")
}
\arguments{
\item{url}{The URL of the service to get the information about}

\item{timestamp}{A character scalar. A string containing the time for which the result must correspond. The format is "YYYY-MM-DD". The special value "NOW" fetch the data using the latest FetchClimate configuration available.}
}
\value{
Type: list\cr
Contains a descriptions of the variables available for fetching
}
\description{
Fetches information about available variables
}
\examples{
#Getting currently available variables

fcVariables()

#Getting variables available on 1 June 2016

fcVariables(timestamp='2016-06-01')

#Obtaining units of "prate" variable

fcVariables(timestamp='2016-06-01')$`prate`$Units

}

