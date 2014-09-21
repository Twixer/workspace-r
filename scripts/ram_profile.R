# =============================================================================
#
# A script to profile the RAM used by a chunk of R code.
#
# =============================================================================


Rprof(tf <- "logs/rprof.log", memory.profiling=TRUE)    
#      [code to profile]
Rprof(NULL)
summaryRprof(tf)