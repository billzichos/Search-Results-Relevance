wd <- "~/GitHub/Search-Results-Relevance"

setwd(wd)

# read in the training file and prepare for combining with test.
train <- read.csv("train.csv", as.is = TRUE)
train$Source <- "Train"
#train$Id <- 0

# read in the test file and prepare for combining with train.
test <- read.csv("test.csv", as.is = TRUE)
test$Source <- "Test"
test$median_relevance <- 0
test$relevance_variance <- 0

# combine the data files for feature generation
library("dplyr")
train <- select(train, id, query, product_title, product_description, median_relevance, relevance_variance, Source)
test <- select(test, id, query, product_title, product_description, median_relevance, relevance_variance, Source)

df <- rbind(train, test)