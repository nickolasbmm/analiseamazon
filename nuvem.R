library(tm)
library(SnowballC)
library(wordcloud)
library (RCurl)
library (XML)
library (stringr)

item1 = read.csv(file="item1.csv", sep=",", header = TRUE, stringsAsFactors = FALSE)
item2 = read.csv(file="item2.csv", sep=",", header = TRUE, stringsAsFactors = FALSE)
item3 = read.csv(file="item3.csv", sep=",", header = TRUE, stringsAsFactors = FALSE)

item = rbind(item1,item2)
item = rbind(item,item3)

docs = Corpus(VectorSource(item$review_comment))
docs = tolower(docs)
docs = removeNumbers(docs)
docs = removePunctuation(docs)
docs = removeWords(docs, stopwords())
docs = removeWords(docs, c('shirt','tshirt','hane','gildan'))
docs = stemDocument(docs)

wordcloud(enc2native(as.character(docs)), min.freq = 15, max.words = 50, random.order = FALSE)
