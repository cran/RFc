% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RFc.R
\name{fcDataSets}
\alias{fcDataSets}
\title{Fetches information about available datasets}
\usage{
fcDataSets(url = "http://fetchclimate2.cloudapp.net/", timestamp = "NOW")
}
\arguments{
\item{url}{The URL of the service to get the information about}

\item{timestamp}{A character scalar. A string containing the time for which the result must correspond. The format is "YYYY-MM-DD". The special value "NOW" fetch the data using the latest FetchClimate configuration available.}
}
\value{
Type: list\cr
Contains a descriptions of the datasets available to fetch the data from
}
\description{
Fetches information about available datasets
}
\examples{
#Getting currently available datasets

fcDataSets()

#Getting datasets available on 1 June 2016

fcDataSets(timestamp='2016-06-01')

#Listing varaibles that are avaialable from "CRU CL 2.0" dataset

fcDataSets(timestamp='2016-06-01')$`CRU CL 2.0`$Variables

}

