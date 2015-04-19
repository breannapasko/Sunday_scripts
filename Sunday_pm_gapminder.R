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
#install.packages("dplyr", dependencies = TRUE)

#this needs to run every time
library("dplyr")

#create pipeline in R
#Find instances where population is greater than 15 million
#filter is a dplyr function
gap.in %>%
  filter(pop > 15000000)

gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

gap.in %>%
  filter(country == "China") 

#Challenge
#Calculate the mean population per continent per year for years prior to 1990

gap.in %>%
  select(continent, year, pop) %>%
  filter(year < 1990) %>%
  group_by(continent, year) %>%
  summarize(mean = mean(pop)) 
 
#order rows by value of mean
gap.in %>%
  select(continent, year, pop) %>%
  filter(year < 1990) %>%
  group_by(continent, year) %>%
  summarize(mean = mean(pop)) %>%
  arrange(mean)




