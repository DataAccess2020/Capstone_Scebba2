library(wordcloud2)

#word cloud for the left

cloud_left <- wordcloud2(data=words_left, size=0.35, shuffle =F,
                         color='random-dark')

print(cloud_left)

#word cloud for the right 

cloud_right <- wordcloud2(data=words_right, size=0.35, shuffle =F,
                          color='random-dark')

print(cloud_right)