# =============================================================================
#
# A startup script for a new R installation. 
# This script contains install command for a 
# list of usefull R packages.
# 
# Convention : 
#     - comments : a information link explaining the package (not the doc)
#     - command : installation only if the package is not already installed
#     - comments : dependencies installed with the package
#
# =============================================================================

# http://www.r-statistics.com/2013/06/top-100-r-packages-for-2013-jan-may/
if (!require('devtools', quietly = F))  install.packages("devtools") 
# package ‘stringr’ successfully unpacked and MD5 sums checked
# package ‘jsonlite’ successfully unpacked and MD5 sums checked
# package ‘bitops’ successfully unpacked and MD5 sums checked
# package ‘httr’ successfully unpacked and MD5 sums checked
# package ‘RCurl’ successfully unpacked and MD5 sums checked
# package ‘memoise’ successfully unpacked and MD5 sums checked
# package ‘whisker’ successfully unpacked and MD5 sums checked
# package ‘evaluate’ successfully unpacked and MD5 sums checked
# package ‘digest’ successfully unpacked and MD5 sums checked
# package ‘devtools’ successfully unpacked and MD5 sums checked

#https://github.com/trinker/pacman/
install_github("pacman", "trinker")

# http://www.r-statistics.com/2014/08/simpler-r-coding-with-pipes-the-present-and-future-of-the-magrittr-package/
if (!require('magrittr', quietly = F)) install.packages("magrittr") 

if (!require('Amelia', quietly = F)) install.packages("Amelia") 
# package ‘Rcpp’ successfully unpacked and MD5 sums checked
# package ‘RcppArmadillo’ successfully unpacked and MD5 sums checked
# package ‘Amelia’ successfully unpacked and MD5 sums checked

if (!require('dplyr', quietly = F)) install.packages("dplyr")
# package ‘assertthat’ successfully unpacked and MD5 sums checked
# package ‘Lahman’ successfully unpacked and MD5 sums checked
# package ‘hflights’ successfully unpacked and MD5 sums checked
# package ‘BH’ successfully unpacked and MD5 sums checked
# package ‘dplyr’ successfully unpacked and MD5 sums checked

if (!require('rJava', quietly = F)) install.packages("rJava") 

if (!require('ggplot2', quietly = F)) install.packages("ggplot2") 
# package ‘RColorBrewer’ successfully unpacked and MD5 sums checked
# package ‘dichromat’ successfully unpacked and MD5 sums checked
# package ‘munsell’ successfully unpacked and MD5 sums checked
# package ‘labeling’ successfully unpacked and MD5 sums checked
# package ‘plyr’ successfully unpacked and MD5 sums checked
# package ‘gtable’ successfully unpacked and MD5 sums checked
# package ‘reshape2’ successfully unpacked and MD5 sums checked
# package ‘scales’ successfully unpacked and MD5 sums checked
# package ‘proto’ successfully unpacked and MD5 sums checked
# package ‘ggplot2’ successfully unpacked and MD5 sums checked

if (!require('xtable', quietly = F)) install.packages("xtable")

if (!require('xlsx', quietly = F)) install.packages("xlsx")
# package ‘xlsxjars’ successfully unpacked and MD5 sums checked
# package ‘xlsx’ successfully unpacked and MD5 sums checked

if (!require('openxlsx', quietly = F)) install.packages("openxlsx")

if (!require('gplots', quietly = F)) install.packages("gplots")
# package ‘gtools’ successfully unpacked and MD5 sums checked
# package ‘gdata’ successfully unpacked and MD5 sums checked
# package ‘gplots’ successfully unpacked and MD5 sums checked

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

# http://trinker.github.io/qdap/vignettes/qdap_vignette.html
install_github("qdap", "trinker")
# package ‘RJSONIO’ successfully unpacked and MD5 sums checked
# package ‘bibtex’ successfully unpacked and MD5 sums checked
# package ‘lubridate’ successfully unpacked and MD5 sums checked
# package ‘RefManageR’ successfully unpacked and MD5 sums checked
# package ‘openNLPdata’ successfully unpacked and MD5 sums checked
# package ‘knitcitations’ successfully unpacked and MD5 sums checked
# package ‘slam’ successfully unpacked and MD5 sums checked
# package ‘qdapDictionaries’ successfully unpacked and MD5 sums checked
# package ‘qdapRegex’ successfully unpacked and MD5 sums checked
# package ‘qdapTools’ successfully unpacked and MD5 sums checked
# package ‘chron’ successfully unpacked and MD5 sums checked
# package ‘gridExtra’ successfully unpacked and MD5 sums checked
# package ‘igraph’ successfully unpacked and MD5 sums checked
# package ‘NLP’ successfully unpacked and MD5 sums checked
# package ‘openNLP’ successfully unpacked and MD5 sums checked
# package ‘plotrix’ successfully unpacked and MD5 sums checked
# package ‘reports’ successfully unpacked and MD5 sums checked
# package ‘stringdist’ successfully unpacked and MD5 sums checked
# package ‘tm’ successfully unpacked and MD5 sums checked
# package ‘venneuler’ successfully unpacked and MD5 sums checked
# package ‘wordcloud’ successfully unpacked and MD5 sums checked
# package ‘koRpus’ successfully unpacked and MD5 sums checked
# package ‘lda’ successfully unpacked and MD5 sums checked
# package ‘proxy’ successfully unpacked and MD5 sums checked
# package ‘stringi’ successfully unpacked and MD5 sums checked
# package ‘SnowballC’ successfully unpacked and MD5 sums checked
# package ‘testthat’ successfully unpacked and MD5 sums checked