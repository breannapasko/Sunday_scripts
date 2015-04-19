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

#Made 3 plots for exercise
plot(x=Brazil$year,y=Brazil$gdpPercap,main="Brazil",xlab="year",ylab="GDP")
plot(x=Djibouti$year,y=Djibouti$gdpPercap,main="Djibouti",xlab="year",ylab="GDP")
plot(x=Oman$year,y=Oman$gdpPercap,main="Oman",xlab="year",ylab="GDP")

#Calculate mean,min, and max life expectancy for each continent

mean(Brazil$lifeExp)
min(Brazil$lifeExp)
max(Brazil$lifeExp)

mean(Djibouti$lifeExp)
min(Djibouti$lifeExp)
max(Djibouti$lifeExp)

mean(Oman$lifeExp)
min(Oman$lifeExp)
max(Oman$lifeExp)
