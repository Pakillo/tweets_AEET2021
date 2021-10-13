system("gathertweet search '#AEET2021'")  # get new tweets

system("gathertweet update")   # update tweets data

# Remove unwanted tweets
library(dplyr)
tweets <- readRDS("tweets.rds")
## add filters here
tweets <- tweets %>%
  filter(user_id != "202845570")

rmarkdown::render(input = "index.Rmd")




