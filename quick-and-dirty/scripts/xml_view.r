# source : http://www.r-bloggers.com/cobble-xpath-interactively-with-the-xmlview-package/

setwd("D:/applis/workspace-r/quick-and-dirty")

devtools::install_github("ramnathv/htmlwidgets") 
devtools::install_github("hrbrmstr/xmlview")
library(xml2)
library(xmlview)

# plain text XML
xml_view("<note><to>Tove</to><from>Jani</from><heading>Reminder</heading><body>Don't forget me this weekend!</body></note>")

# read-in XML document
doc <- read_xml("http://www.npr.org/rss/rss.php?id=1001")
xml_view(doc, add_filter=TRUE)


# ------------------------------------------


doc <- read_xml("data/affaire.wsdl")
xml_view(doc, add_filter=TRUE)

