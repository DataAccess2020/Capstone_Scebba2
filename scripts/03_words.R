library(tidyverse)
library(tidytext)
library(stopwords)
library(stringr)
library(stylo)

#cleaning data for left

tweets_left$full_text <- gsub("https\\S*", "", tweets_left$full_text) 
tweets_left$full_text <- gsub("@\\S*", "", tweets_left$full_text) 
tweets_left$full_text <- gsub("amp", "", tweets_left$full_text) 
tweets_left$full_text <- gsub("[\r\n]", "", tweets_left$full_text)
tweets_left$full_text <- gsub("[[:punct:]]", "", tweets_left$full_text)

stop_words_ita<-tibble(word=stopwords("it"))


#cleaning data for right

tweets_right$full_text <- gsub("https\\S*", "", tweets_right$full_text) 
tweets_right$full_text <- gsub("@\\S*", "", tweets_right$full_text) 
tweets_right$full_text <- gsub("amp", "", tweets_right$full_text) 
tweets_right$full_text <- gsub("[\r\n]", "", tweets_right$full_text)
tweets_right$full_text <- gsub("[[:punct:]]", "", tweets_right$full_text)


#looking at most used words of left and right

words_left <- tibble(text = tweets_left$full_text) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

words_right <- tibble(text = tweets_right$full_text) %>%
  unnest_tokens(word, text) %>%
  dplyr::anti_join(stop_words_ita)%>%
  count(word, sort = TRUE)

