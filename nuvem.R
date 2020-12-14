library(tm)
library(SnowballC)
library(wordcloud)
library (RCurl)
library (XML)
library (stringr)

msg = read.csv(file="todasasestrelas.csv", sep=";", header = TRUE, stringsAsFactors = FALSE)
