
library("dplyr")

gathertweet::gathertweet_search("#AEET2021")  # get new tweets
gathertweet::gathertweet_update() # update tweets data


tweets <- readRDS("tweets.rds")

## add filters here (e.g. to remove unwanted tweets)
tweets <- tweets %>%
  filter(user_id != "202845570")


#### words to remove from each wordcloud
remove.words <- c("congreso", "XV", "#AEET2021",
                  "habla", "hablando", "sesión", "charla", "bloque", "presenta",
                  "irene", "miguel", "maría", "josé", "garcía", "pablo")
remove.hashtags <- c("congreso", "XV")
remove.mentions <- c("congreso", "XV")


## Render
rmarkdown::render(input = "index.Rmd")




