wordcloud <- function(df, show, remove, ...) {

  toremove <- c(quanteda::stopwords("en"),
                quanteda::stopwords("es"),
                "http", "https", "t.co",
                remove)

  if (show == "words") {
    vec <- df$text
    toremove <- c(toremove,
                  "amp")
  }

  if (show == "hashtags") {
    vec <- unlist(df$hashtags)
  }

  if (show == "mentions") {
    vec <- na.omit(unlist(df$mentions_screen_name))
  }



  words <- vec %>%
    quanteda::tokens(
      remove_punct = TRUE,
      remove_symbols = TRUE,
      remove_numbers = TRUE,
      remove_url = TRUE) %>%
    quanteda::tokens_remove(toremove) %>%
    quanteda::dfm()

  quanteda.textplots::textplot_wordcloud(words, #min_count = min.count,
                                         random_order = FALSE,
                                         rotation = .25,
                                         color = RColorBrewer::brewer.pal(8,"Dark2"),
                                         ...)

}

