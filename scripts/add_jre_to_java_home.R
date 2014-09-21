# =============================================================================
# 
# The rJava package needs the JRE. 
# There is regularly a problem on my environnement as JAVA_HOME is pointing to 
# the JDK.
# This script is modifying the JAVA_HOME environnement variable.
# 
# =============================================================================


# This function appends the "jre" string to the JAVA_HOME env variable if this
# is not the case.
#
# Args : 
#    N/A
#
# Returns : 
#    boolean : TRUE if the JAVA_HOME env variable has been modified.
add.jre.to.java.home <- function()  {
    
    java.home <- Sys.getenv("JAVA_HOME")    
    message(paste0("JAVA_HOME = ", java.home))
    
    # JRE or not in the JAVA_HOME env variable
    if (length(grep("jre", java.home)) == 0) {
        message("The JAVA_HOME doesn't point to a JRE.")
    } else {
        message("The JAVA_HOME is pointing to a JRE.")
        return(FALSE)
    }
    
    
    java.home.jre <- paste0(java.home, "jre")    
    Sys.setenv("JAVA_HOME" = java.home.jre)    
    message(paste0("JAVA_HOME has been changed to ", java.home.jre))
    
    return(TRUE)
}
