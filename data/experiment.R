setwd("~/Dropbox/courses/media_politics/data")

df<-read.csv("class_experiment.csv")



names(df)

df$y<-df[,31]
df$gender<-df[,23]
df$age<-df[,22]

df$x<-gsub("^$|^ $", NA, df$Treatment.Control)

model<-lm(y ~ x, data=df)

require(visreg)

visreg(model, xvar="x", ylab="Self-Reported Interest in Politics After Watching",
       xlab="Randomly Assigned Video Exposure",
       main="The Effect of Political Information (Video) on Political Interest")

summary(model)
