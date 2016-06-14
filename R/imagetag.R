imagetag <- function(cltID,secID,srcimage)
    {
      library(clarifai)
      secret_id(c(cltID,secID))
      get_token()
      tagop <- tag_image_urls(srcimage)
      data <-as.data.frame(tagop)
      return(data[3])
    }