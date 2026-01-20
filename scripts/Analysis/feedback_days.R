## METADATA ===============================================================
## Description: Updates day 1. Showcase of basic R functions for data
## 
## R version: 4.5.1 for Windows
## Date: 2026-01-20 11:21:02.495754
## License: GPL3
## Author: Oskar Hagen (oskar@hagen.bio)
##=======================================================================##

# Load data... Note that files are not provided
responses <- read.csv("C:/Users/ohagen/Downloads/Day1 (Responses) - Form Responses 1.csv")
responses <- read.csv("C:/Users/ohagen/Downloads/Day 2 - Digital Competence in the Biological Sciences (Responses) - Form Responses 1.csv")

str(responses)
responses$Today.overall. <- as.factor(responses$Today.overall.)
summary(responses$Speed..5.is.perfect.)
table(responses$Speed..5.is.perfect.)
# get most frequent value
which.max(table(responses$Speed..5.is.perfect.))
hist(responses$Speed..5.is.perfect.)
# improve breaks of historgram
hist(responses$Speed..5.is.perfect., breaks = seq(0.5, 10.5, by = 1))
# add xrange of axis to show full range from 1 to 10
hist(responses$Speed..5.is.perfect., breaks = seq(0.5, 10.5, by = 1), xlim = c(1, 10))
#barplot of responses
barplot(table(responses$Speed..5.is.perfect.))
# barplot of responses showing the full range of possibilities from 0 to 10
barplot(table(factor(responses$Speed..5.is.perfect., levels = 1:10)))
table(responses$Today.overall.)

# only print if not empty
improvements <- responses$What.to.improve.[responses$What.to.improve. != ""]
what_workded <- responses$What.worked.[responses$What.worked. != ""]
# for loop, print each improvement for a specific ammount of time according to length of input

for (improvement in improvements) {
  print(improvement)
  Sys.sleep(2 + nchar(improvement) / 100)
}


for (i in what_workded) {
  print(i)
  Sys.sleep(2 + nchar(i) / 100)
}

