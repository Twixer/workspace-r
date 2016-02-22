# source : http://stackoverflow.com/questions/10489411/how-to-modify-my-r-code-to-plot-this-kind-of-gantt-chart
setwd("D:/applis/workspace-r/quick-and-dirty")


library(ggplot2)
library(dplyr)

# HEADERS : JOB DEBUT FIN DUREE_SEC ETAT
raw_data <- read_csv2(file = "data/sid_v2_prod_dataset_full-20160202-150329.csv", col_names = TRUE, col_types = NULL, locale = locale_fr)

# ----------------------------
# Clean / Filter data
# ----------------------------
dataset <- filter(raw_data, !grepl("E1_", JOB))

# JOB : les jobs sont des facteurs
dataset$JOB <- as.factor(dataset$JOB)

# DEBUT : on transforme en date/heure
dataset$DEBUT <- as.POSIXct(dataset$DEBUT, "%d/%m/%y %H:%M:%S", tz = "Europe/Paris")

# FIN : on transforme en date/heure
dataset$FIN <- as.POSIXct(dataset$FIN, "%d/%m/%y %H:%M:%S", tz = "Europe/Paris")

dataset$ETAT <- as.factor(dataset$ETAT)

# filter one day
#df_one_day <- dataset[strftime(dataset$DEBUT, format="%d-%m-%y")=="29-01-16" | dataset$DEBUT > "2016-01-28 19:00:00",]
df_one_day <- dataset[dataset$DEBUT > "2016-01-25 12:00:00" & dataset$DEBUT < "2016-01-27 12:00:00",]

df_one_day <- df_one_day[order(df_one_day$DEBUT),]

# p <- ggplot(df_one_day, aes(colour=JOB)) +
#     theme_bw() +
#     geom_segment(aes(x=DEBUT, xend=FIN, y=JOB, yend=JOB), size=2) +
#     geom_point(aes(x=DEBUT,y=JOB),size=5) + 
#     geom_point(aes(x=FIN, y=JOB),size=5) +
#     theme(legend.position = "none", panel.grid.major = element_blank(), axis.text.y = element_blank()) + 
#     xlab("Duration") +
#     geom_text(aes(x=DEBUT,  y=JOB, label=JOB), fontface="bold") + 
#     scale_x_datetime(date_breaks = "1 hour", date_labels = "%H:%M:%S")
p <- ggplot(df_one_day, aes(colour=DUREE_SEC)) +
    theme_bw() +
    geom_segment(aes(x=DEBUT, xend=FIN, y=JOB, yend=JOB), size=1) +
    geom_point(aes(x=DEBUT,y=JOB),size=3) + 
    geom_point(aes(x=FIN, y=JOB),size=3) +
    theme(legend.position = "none", panel.grid.major = element_blank()) + 
    xlab("Duration") +
    # geom_text(aes(x=DEBUT,  y=JOB, label=JOB), fontface="bold") + 
    scale_x_datetime(date_breaks = "1 hour", date_labels = "%H:%M:%S")
p
