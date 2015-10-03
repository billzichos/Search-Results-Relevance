wd <- "~/GitHub/Search-Results-Relevance"

setwd(wd)

# The following files are provided
#   - train.csv.zip
#   - sampleSubmission.csv.zip
#   - test.csv.zip

source("~/GitHub/Get-Raw-Data/download.R")

downloadSingleKaggleZip("crowdflower-search-relevance", "train.csv.zip", "train.csv")
downloadSingleKaggleZip("crowdflower-search-relevance", "sampleSubmission.csv.zip", "sampleSubmission.csv")
downloadSingleKaggleZip("crowdflower-search-relevance", "test.csv.zip", "test.csv")