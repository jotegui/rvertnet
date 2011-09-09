# vertsearch.R

vertsearch <- 
# Args:
#   cl: taxonomic search term (character)
#   sp: state (character)
#   limit: search return limit (numeric)
# Examples:
#   vertsearch("aves", "california", 1)
# Returns:
#   dataframe of search results OR prints "no search match" if no matches

function(cl = NA, sp = NA, limit = NA,
  url = "http://canary.vert-net.appspot.com/api/search",
  ...,
  curl = getCurlHandle()) 
{
  args <- list()
  if(!is.na(cl))
    args$cl <- cl
  if(!is.na(sp))
    args$sp <- sp
  if(!is.na(limit))
    args$limit <- limit
  temp <- getForm(url,
    .params = args,
    ...,
    curl = curl)
#   out <- fromJSON(I(temp))
  return(temp)
}

# http://canary.vert-net.appspot.com/api/search?cl=aves&sp=california&limit=1