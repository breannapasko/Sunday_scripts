#This is a script to explore the gapminder dataset using R
#Breanna Pasko breannapasko@gmail.com
#2015-19-04

#Read in data as tab-delimited
gap.in<- read.table("output/combined_gapMinder.tsv", sep = "\t", header = TRUE)

#learning for loops:
for (number in 1:10){
  print(gap.in[number,])
}

#you can nest for loops
for (row.number in 1:10){
      for(col.number in 1:5){
          print(gap.in[row.number,col.number])
      }
}

gap.in[1:10,1:5]

#how to make a function in R:
#function is a set of code to do one thing

add.me <- function(x,y){
  (x+y)*8
}

add.me(3,4)

#Install dplyr package and dependencies
#only needed to run once
install.packages("dplyr", dependencies = TRUE)

#this needs to run every time
library("dplyr")





