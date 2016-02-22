# source : http://stackoverflow.com/questions/3550341/gantt-charts-with-r

setwd("D:/applis/workspace-r/quick-and-dirty")

library("googleVis")

datTL <- data.frame(Position=c(rep("President", 3), rep("Vice", 3)),
                    Name=c("Washington", "Adams", "Jefferson",
                           "Adams", "Jefferson", "Burr"),
                    start=as.Date(x=rep(c("1789-03-29", "1797-02-03", 
                                          "1801-02-03"),2)),
                    end=as.Date(x=rep(c("1797-02-03", "1801-02-03", 
                                        "1809-02-03"),2)))

Timeline <- gvisTimeline(data=datTL, 
                         rowlabel="Name",
                         barlabel="Position",
                         start="start", 
                         end="end",
                         options=list(timeline="{groupByRowLabel:false}",
                                      backgroundColor='#ffd', 
                                      height=350,
                                      colors="['#cbb69d', '#603913', '#c69c6e']"))
plot(Timeline)

# ------------------------------------------
setwd("D:/applis/workspace-r/quick-and-dirty")

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

Timeline <- gvisTimeline(data=df_one_day, 
                         rowlabel="jobs",
                         barlabel="etat",
                         start="debut", 
                         end="fin",
                         options=list(timeline="{groupByRowLabel:false}",
                                      backgroundColor='#ffd', 
                                      height=900,
                                      width=1800,
                                      colors="['#cbb69d', '#603913', '#c69c6e']"))
plot(Timeline)
