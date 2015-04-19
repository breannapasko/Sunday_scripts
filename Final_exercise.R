#Final Exercise
#Breanna Pasko
#breannapasko@gmail.com

library("dplyr")
gap.in<- read.table("output/combined_gapMinder.tsv", sep = "\t", header = TRUE)

gap.in %>%
  filter(country == "Brazil") -> Brazil
gap.in %>%
  filter(country == "Djibouti") -> Djibouti
gap.in %>%
  filter(country == "Oman") -> Oman



plot(x=Brazil$year,y=Brazil$gdpPercap,main="Brazil",xlab="year",ylab="GDP")
plot(x=Djibouti$year,y=Djibouti$gdpPercap,main="Djibouti",xlab="year",ylab="GDP")
plot(x=Oman$year,y=Oman$gdpPercap,main="Oman",xlab="year",ylab="GDP")