
gathertweet::gathertweet_search("#AEET2021")  # get new tweets
gathertweet::gathertweet_update() # update tweets data

# system("gathertweet search '#AEET2021'")
# system("gathertweet update")


library(dplyr)

tweets <- readRDS("tweets.rds")

## add filters here (e.g. to remove unwanted tweets)
tweets <- tweets %>%
  filter(user_id != "202845570")

rmarkdown::render(input = "index.Rmd")




