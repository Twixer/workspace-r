# =============================================================================
#
# A usefull script to reset the graphic options to default.
#
# =============================================================================

# This function resets the graphic options to default.
#
# Args : 
#    N/A
#
# Returns : 
#    the default graphic options
resetPar <- function() {
    dev.new()
    op <- par(no.readonly = TRUE)
    dev.off()
    op
}