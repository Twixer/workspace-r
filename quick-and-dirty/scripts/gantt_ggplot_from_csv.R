# source : http://stackoverflow.com/questions/3550341/gantt-charts-with-r

setwd("D:/applis/workspace-r/quick-and-dirty")

library(ggplot2)
library(reshape2)

# Modify the "sample.csv" to be the name of your file target. 
# Make sure you have headers of: Task, Start, Finish, Critical OR modify the below to reflect column count.
rawschedule <- read.csv("sample.csv", header = TRUE)
tasks <- c(t(rawschedule["Task"]))
dfr <- data.frame(
    name        = factor(tasks, levels = tasks),
    start.date  = c(rawschedule["Start"]),
    end.date    = c(rawschedule["Finish"]),
    is.critical = c(rawschedule["Critical"])
)
mdfr <- melt(dfr, measure.vars = c("Start", "Finish"))

#generates the plot
ggplot(mdfr, aes(as.Date(value, "%m/%d/%Y"), name, colour = Critical)) +
    geom_line(size = 6) +
    xlab("Duration") + ylab("Tasks") +
    theme_bw()


# ------------------------------------------

library(ggplot2)
library(reshape2)
library(dplyr)
library(stringr)
library(tidyr)

# Modify the "sample.csv" to be the name of your file target. 
# HEADERS of jobs.csv : TYPEJOB	DEBUT	FIN	DUREE_SEC	DUREE_SEC_MS	ETAT
raw_data <- read.csv("data/jobs.csv", header = TRUE, sep=";")
#jobs <- c(t(raw_data["TYPEJOB"]))
df <- data.frame(
    jobs   = c(raw_data["TYPEJOB"]),
    debut  = c(raw_data["DEBUT"]),
    fin    = c(raw_data["FIN"]),
    etat   = c(raw_data["ETAT"])
)
colnames(df) <- c("jobs", "debut", "fin", "etat")

# columns (debut, fin) to date time
#http://www.noamross.net/blog/2014/2/10/using-times-and-dates-in-r---presentation-code.html
df$debut <- as.POSIXct(df$debut, "%d/%m/%y %H:%M:%S", tz = "GMT")
df$fin <- as.POSIXct(df$debut, "%d/%m/%y %H:%M:%S", tz = "GMT")

# filter one day
df_one_day <- df[strftime(df$debut, format="%d-%m-%y")=="29-07-14",]
#another way to do this : 
#df_one_day <- subset(df,strftime(debut, format="%d-%m-%y")=="29-07-14", )
df_one_day <- df_one_day[order(df_one_day$debut),]
# Melt data on 
melted_jobs <- melt(df_one_day, measure.vars = c("debut", "fin"))

# debug
# as.Date(melted_jobs["value"], "%d/%m/%y %H:%M:%S") # KO
# as.Date("01/08/14 16:01:57", "%d/%m/%y %H:%M:%S")  # KO
# strftime("01/08/14 16:01:57", "%d/%m/%y %H:%M:%S") # OK
# strftime(melted_jobs["value"], "%d/%m/%y %H:%M:%S") # KO
# 
# lt = strftime("01/08/14 16:01:57", "%d/%m/%y %H:%M:%S")
# str_date <- strftime(lt, format="%d-%m-%y")
# typeof(str_date)
# end debug

#generates the plot
ggplot(melted_jobs, aes(x=value, y=jobs, colour=etat)) +
    geom_line(size = 6) +
    xlab("Duration") + ylab("Jobs") +
    theme_bw()+
    theme(axis.text.x=element_text(angle = 90, vjust = 0.5)) # http://stackoverflow.com/questions/1330989/rotating-and-spacing-axis-labels-in-ggplot2
    
    #opts(axis.text.x=theme_text(angle=90, hjust=1))

