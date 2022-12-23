tweets_left <- rtweet::get_timeline(user = left_lomb$screen_name,
                                    n = 150000,
                                    verbose = T,
                                    parse = T,
                                    Sys.sleep(0.5)
)


tweets_right <- rtweet::get_timeline(user = right_lomb$screen_name,
                                     n = 150000,
                                     verbose = T,
                                     parse = T,
                                     Sys.sleep(0.5)
)



tweets_left_lomb <- sapply(tweets_left, as.character) 
write.csv(tweets_left_lomb, "tweets_left_lomb.cvs",
          row.names = F)


tweets_right_lomb <- sapply(tweets_right, as.character) 
write.csv(tweets_right_lomb, "tweets_right_lomb.cvs",
          row.names = F)