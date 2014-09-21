# get the latest installr package:
if (!require('devtools')) install.packages('devtools'); require('devtools')
install_github('installr', 'talgalili')
require(installr)

# read the data (this will take a LOOOONG time)
download_RStudio_CRAN_data(log_folder = "./")

mode(package_ip_id) <- "numeric"
dend_package_ip_id

closeAllConnections()
