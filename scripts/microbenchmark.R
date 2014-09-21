# =============================================================================
#
# This script is a sample to illustrate microbenchmarking in R.
# Reference : http://trinkerrstuff.wordpress.com/2012/04/28/microbenchmarking-with/
#
# =============================================================================


library(microbenchmark); library(plyr) 
op <- microbenchmark(
    PLYR=ddply(mtcars, .(cyl, gear), summarise, 
               output = mean(hp)),
    AGGR=aggregate(hp ~ cyl + gear, mtcars, mean),
    TAPPLY = tapply(mtcars$hp, interaction(mtcars$cyl, 
                                           mtcars$gear), mean),
    times=1000L)

#standard data frame of the output
print(op) 

#boxplot of output
boxplot(op) 

#nice log plot of the output
library(ggplot2) 
qplot(y=time, data=op, colour=expr) + scale_y_log10()
