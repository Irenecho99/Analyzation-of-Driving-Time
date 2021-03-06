
library(DescTools)

#reading the csv data
df<-read.csv('/Users/irenecho/Desktop/drivingtime.csv')


#setting time and day variable as a factor 
df$time <- as.factor(df$time)
df$day <- as.factor(df$day)


#creating the ANOVA table
mod <- lm(minute ~ time + day, data = df)
anova(mod)


#perform a Post Hoc test on 'time' variable
PostANOVA <- PostHocTest(aov(mod), method = "hsd")
PostANOVA$time
```