system("gathertweet search '#AEET2021'")  # get new tweets

system("gathertweet update")   # update tweets data

# Remove unwanted tweets
library(dplyr)
tweets <- readRDS("tweets.rds")
## add filters here
# saveRDS(tweets, "tweets.rds")

rmarkdown::render(input = "index.Rmd")




