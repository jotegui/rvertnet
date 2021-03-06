\name{vertavailablemaps}
\alias{vertavailablemaps}
\title{Retrieve metadata about the maps currently available for querying against
		the &m= parameter from VertNet v2 portals.}
\usage{
  vertavailablemaps(key = "r_B68F3", grp = "fish", q = NA,
    url = NULL)
}
\arguments{
  \item{key}{API Key is required to run any query}

  \item{grp}{VertNet group to query. Currently available
  oprions fish, bird and herp. Default fish.}

  \item{q}{parameter can be used to query for selected maps
  It supports the 'OR' operator.}

  \item{url}{The VertNet url for the function (should be
  left to default).}
}
\value{
  Dataframe of search results empty if no matches.
}
\description{
  Retrieve metadata about the maps currently available for
  querying against the &m= parameter from VertNet v2
  portals.
}
\examples{
\dontrun{
# Search for maps with keywords
vertavailablemaps(q="May or June")
vertavailablemaps(q="Fishery Closure")

# List all
vertavailablemaps()
vertavailablemaps(grp="bird")
vertavailablemaps(grp="herp")
}
}

