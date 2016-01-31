# =============================================================================
#
# A startup script for a new R installation. 
# This script contains install command for a list of usefull R packages.
# 
# Convention : 
#     - comments : a information link explaining the package (not the doc)
#     - command : installation only if the package is not already installed
#     - comments : dependencies installed with the package
#
# =============================================================================


# ----------------------------------------------------------------------
# Dev
# ----------------------------------------------------------------------

# http://www.r-statistics.com/2013/06/top-100-r-packages-for-2013-jan-may/
if (!require('devtools', quietly = F))  install.packages("devtools") 
# package ‘magrittr’ successfully unpacked and MD5 sums checked
# package ‘BH’ successfully unpacked and MD5 sums checked
# package ‘mime’ successfully unpacked and MD5 sums checked
# package ‘R6’ successfully unpacked and MD5 sums checked
# package ‘stringr’ successfully unpacked and MD5 sums checked
# package ‘stringi’ successfully unpacked and MD5 sums checked
# package ‘brew’ successfully unpacked and MD5 sums checked
# package ‘Rcpp’ successfully unpacked and MD5 sums checked
# package ‘xml2’ successfully unpacked and MD5 sums checked
# package ‘httr’ successfully unpacked and MD5 sums checked
# package ‘curl’ successfully unpacked and MD5 sums checked
# package ‘memoise’ successfully unpacked and MD5 sums checked
# package ‘whisker’ successfully unpacked and MD5 sums checked
# package ‘evaluate’ successfully unpacked and MD5 sums checked
# package ‘digest’ successfully unpacked and MD5 sums checked
# package ‘rstudioapi’ successfully unpacked and MD5 sums checked
# package ‘jsonlite’ successfully unpacked and MD5 sums checked
# package ‘roxygen2’ successfully unpacked and MD5 sums checked
# package ‘rversions’ successfully unpacked and MD5 sums checked
# package ‘git2r’ successfully unpacked and MD5 sums checked
# package ‘devtools’ successfully unpacked and MD5 sums checked

#https://github.com/trinker/pacman/
#install_github("trinker/pacman")
if (!require('pacman', quietly = F))  install.packages("pacman")

if (!require('rJava', quietly = F)) install.packages("rJava") 

# http://projecttemplate.net/getting_started.html
if (!require('ProjectTemplate', quietly = F)) install.packages("ProjectTemplate")

# http://trinkerrstuff.wordpress.com/2012/04/28/microbenchmarking-with/
if (!require('microbenchmark', quietly = F)) install.packages("microbenchmark")

if (!require('installr', quietly = F)) install.packages("installr")
# package ‘XML’ successfully unpacked and MD5 sums checked
# package ‘rjson’ successfully unpacked and MD5 sums checked
# package ‘data.table’ successfully unpacked and MD5 sums checked
# package ‘sp’ successfully unpacked and MD5 sums checked

# http://www.inside-r.org/packages/cran/log4r/docs/log4r
if (!require('log4r', quietly = F)) install.packages("log4r")

if (!require('RSelenium', quietly = F)) install.packages("RSelenium")
# package ‘RJSONIO’ successfully unpacked and MD5 sums checked
# package ‘caTools’ successfully unpacked and MD5 sums checked
# package ‘RSelenium’ successfully unpacked and MD5 sums checked

if (!require('git2r', quietly = F)) install.packages("git2r")

if (!require('Rtools', quietly = F)) install.packages("Rtools")

# ----------------------------------------------------------------------
# Data sources
# ----------------------------------------------------------------------

library("devtools")

# http://ropensci.org/tutorials/elastic_tutorial.html
# https://github.com/ropensci/elastic
if (!require('elastic', quietly = F)) install.packages("elastic") 

# https://github.com/ropensci/nodbi
if (!require('sofa', quietly = F)) devtools::install_github("ropensci/sofa")
# package ‘httr’ successfully unpacked and MD5 sums checked
# package ‘openssl’ successfully unpacked and MD5 sums checked
# package ‘R6’ successfully unpacked and MD5 sums checked
if (!require('etseed', quietly = F)) devtools::install_github("ropensci/etseed")
if (!require('rrlite', quietly = F)) devtools::install_github("ropensci/rrlite")
if (!require('RedisAPI', quietly = F)) devtools::install_github("ropensci/RedisAPI")
if (!require('nodbi', quietly = F)) devtools::install_github("ropensci/nodbi")

# https://github.com/hadley/readr
if (!require('readr', quietly = F)) install.packages("readr")

# ----------------------------------------------------------------------
# Data manipulation and analysis
# ----------------------------------------------------------------------

if (!require('Amelia', quietly = F)) install.packages("Amelia") 
# package ‘RcppArmadillo’ successfully unpacked and MD5 sums checked
# package ‘Amelia’ successfully unpacked and MD5 sums checked

if (!require('dplyr', quietly = F)) install.packages("dplyr")
# package ‘assertthat’ successfully unpacked and MD5 sums checked
# package ‘lazyeval’ successfully unpacked and MD5 sums checked
# package ‘DBI’ successfully unpacked and MD5 sums checked
# package ‘dplyr’ successfully unpacked and MD5 sums checked


# https://github.com/twitter/AnomalyDetection
library(devtools); if (!require('AnomalyDetection', quietly = F)) devtools::install_github("twitter/AnomalyDetection")
# package ‘lubridate’ successfully unpacked and MD5 sums checked

# ----------------------------------------------------------------------
# Graphic librairies
# ----------------------------------------------------------------------

if (!require('ggplot2', quietly = F)) install.packages("ggplot2") 
# package ‘colorspace’ successfully unpacked and MD5 sums checked
# package ‘RColorBrewer’ successfully unpacked and MD5 sums checked
# package ‘dichromat’ successfully unpacked and MD5 sums checked
# package ‘munsell’ successfully unpacked and MD5 sums checked
# package ‘labeling’ successfully unpacked and MD5 sums checked
# package ‘gtable’ successfully unpacked and MD5 sums checked
# package ‘plyr’ successfully unpacked and MD5 sums checked
# package ‘reshape2’ successfully unpacked and MD5 sums checked
# package ‘scales’ successfully unpacked and MD5 sums checked
# package ‘ggplot2’ successfully unpacked and MD5 sums checked

if (!require('gplots', quietly = F)) install.packages("gplots")
# package ‘gtools’ successfully unpacked and MD5 sums checked
# package ‘gdata’ successfully unpacked and MD5 sums checked
# package ‘gplots’ successfully unpacked and MD5 sums checked

# https://plot.ly/r/
if (!require('plotly', quietly = F)) install.packages("plotly")
# package ‘htmltools’ successfully unpacked and MD5 sums checked
# package ‘yaml’ successfully unpacked and MD5 sums checked
# package ‘viridis’ successfully unpacked and MD5 sums checked
# package ‘base64enc’ successfully unpacked and MD5 sums checked
# package ‘htmlwidgets’ successfully unpacked and MD5 sums checked
# package ‘plotly’ successfully unpacked and MD5 sums checked

# http://www.r-bloggers.com/seeing-the-daylight-with-r/
if (!require('maptools', quietly = F)) install.packages("maptools")

library(devtools); if (!require('emoGG', quietly = F)) devtools::install_github("dill/emoGG")
# package ‘png’ successfully unpacked and MD5 sums checked
# package ‘proto’ successfully unpacked and MD5 sums checked

# ----------------------------------------------------------------------
# XML librairies
# ----------------------------------------------------------------------

if (!require('xtable', quietly = F)) install.packages("xtable")

if (!require('xlsx', quietly = F)) install.packages("xlsx")
# package ‘xlsxjars’ successfully unpacked and MD5 sums checked
# package ‘xlsx’ successfully unpacked and MD5 sums checked

if (!require('openxlsx', quietly = F)) install.packages("openxlsx")

# ----------------------------------------------------------------------
# Text Mining, Dialog Analysis
# ----------------------------------------------------------------------

# http://trinker.github.io/qdap/vignettes/qdap_vignette.html
if (!require('qdap', quietly = F)) install.packages("qdap")
# package ‘iterators’ successfully unpacked and MD5 sums checked
# package ‘pkgmaker’ successfully unpacked and MD5 sums checked
# package ‘registry’ successfully unpacked and MD5 sums checked
# package ‘rngtools’ successfully unpacked and MD5 sums checked
# package ‘gridBase’ successfully unpacked and MD5 sums checked
# package ‘foreach’ successfully unpacked and MD5 sums checked
# package ‘doParallel’ successfully unpacked and MD5 sums checked
# package ‘data.table’ successfully unpacked and MD5 sums checked
# package ‘gtools’ successfully unpacked and MD5 sums checked
# package ‘NMF’ successfully unpacked and MD5 sums checked
# package ‘irlba’ successfully unpacked and MD5 sums checked
# package ‘openNLPdata’ successfully unpacked and MD5 sums checked
# package ‘bitops’ successfully unpacked and MD5 sums checked
# package ‘slam’ successfully unpacked and MD5 sums checked
# package ‘qdapDictionaries’ successfully unpacked and MD5 sums checked
# package ‘qdapRegex’ successfully unpacked and MD5 sums checked
# package ‘qdapTools’ successfully unpacked and MD5 sums checked
# package ‘chron’ successfully unpacked and MD5 sums checked
# package ‘gdata’ successfully unpacked and MD5 sums checked
# package ‘gender’ successfully unpacked and MD5 sums checked
# package ‘gridExtra’ successfully unpacked and MD5 sums checked
# package ‘igraph’ successfully unpacked and MD5 sums checked
# package ‘NLP’ successfully unpacked and MD5 sums checked
# package ‘openNLP’ successfully unpacked and MD5 sums checked
# package ‘plotrix’ successfully unpacked and MD5 sums checked
# package ‘RCurl’ successfully unpacked and MD5 sums checked
# package ‘reports’ successfully unpacked and MD5 sums checked
# package ‘stringdist’ successfully unpacked and MD5 sums checked
# package ‘tidyr’ successfully unpacked and MD5 sums checked
# package ‘tm’ successfully unpacked and MD5 sums checked
# package ‘venneuler’ successfully unpacked and MD5 sums checked
# package ‘wordcloud’ successfully unpacked and MD5 sums checked
# package ‘XML’ successfully unpacked and MD5 sums checked
# package ‘qdap’ successfully unpacked and MD5 sums checked

if (!require('SnowballC', quietly = F)) install.packages("SnowballC")
if (!require('lsa', quietly = F)) install.packages("lsa")
if (!require('proxy', quietly = F)) install.packages("proxy")

# https://github.com/cuche27/campagnePresidentielle
if (!require('FactoMineR', quietly = F)) install.packages("FactoMineR")

if (!require('gender', quietly = F)) install.packages("gender")
if (!require('genderdata', quietly = F)) install.packages("genderdata")


# ----------------------------------------------------------------------
# Misc.
# ----------------------------------------------------------------------

if (!require('fortunes', quietly = F)) install.packages("fortunes")