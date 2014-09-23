# =============================================================================
#
# A script to illustrate how to load a set of libraries.
#
# =============================================================================


packs <- c("XML", "devtools", "RCurl")
success <- suppressWarnings(sapply(packs, require, character.only = TRUE))
install.packages(names(success)[!success])
sapply(names(success)[!success], require, character.only = TRUE)
