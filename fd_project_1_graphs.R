install.packages("flexdashboard")
library(flexdashboard)
setwd('/Users/sultm0a/Documents/Covid 19')
healthy_data = read.csv("Healthy Participants.csv")
head(healthy_data)
library(ggplot2)
library(plotly)
fig_1=ggplot(data=healthy_data) + 
  geom_point(mapping=aes(x=Amount.of.Spike.3.Months,y=Amount.of.Spike.6.Months,color=GROUP.INFO,size = Change.in.Spike))+
 xlab('Amount of Spike at 3 Months') +
  ylab("Amount of Spike at 6 Months")+
  
  theme_bw() 
  labs(color='Vaccination Status')
fig_1
ggplotly(fig_1)
library(dplyr)
library(ggplot2)
library(data.table)


# Create data
data <- data.frame(
  Gender=c("Male","Female") ,  
  Participants=c(107,52)
)

# Barplot
fig_2<-ggplot(data, aes(x='Gender', y=Participants,fill=Gender)) + 
  geom_bar(stat='identity')+
  coord_polar("y", start=0)


data <- data.frame(
  Groups=c("Covid Positive & Un Vaccinated","Covid Positive & Vaccinated",
           " Phase 3 Trials","Vaccinated") ,  
  Participants=c(45,33,47,34)
)

fig_3<-ggplot(data, aes(x='', y=Participants,fill=Groups)) + 
  geom_bar(stat='identity')+
  coord_polar("y", start=0)

fig_3


table(healthy_data$GROUP.INFO)










