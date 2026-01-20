## METADATA ===============================================================
## Description: Updates day 1. Showcase of basic R functions for data
## 
## R version: 4.5.1 for Windows
## Date: 2026-01-20 11:21:02.495754
## License: GPL3
## Author: Oskar Hagen (oskar@hagen.bio)
##=======================================================================##


responses <- read.csv("C:/Users/ohagen/Downloads/Day1 (Responses) - Form Responses 1.csv")
str(responses)
responses$Today.overall. <- as.factor(responses$Today.overall.)
summary(responses$Speed..5.is.perfect.)
table(responses$Speed..5.is.perfect.)
# get most frequent value
which.max(table(responses$Speed..5.is.perfect.))
hist(responses$Speed..5.is.perfect.)
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

