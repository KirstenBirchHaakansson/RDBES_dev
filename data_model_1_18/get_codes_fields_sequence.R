

# Get codes, table fields and sequence from *.xsd files at https://github.com/ices-tools-dev/RDBES.git
# 1. Clone and pull https://github.com/ices-tools-dev/RDBES.git, so files are stored locally

library(devtools)
library(XML)

# Source Dave's fuctions

devtools::source_url("https://github.com/davidcurrie2001/MI_RDBES_ExchangeFiles/blob/master/ValidateTables.R?raw=TRUE")
devtools::source_url("https://github.com/davidcurrie2001/MI_RDBES_ExchangeFiles/blob/master/ImportReferenceData.R?raw=TRUE")



fields_sequence <- getValidationData("Q:/mynd/RDB/RDBES/XSD-files/BaseTypes.xsd")

unzip("Q:/mynd/RDB/RDBES/XSD-files/Enumerators.zip", exdir = "Q:/mynd/RDB/RDBES/XSD-files/Enumerators")

codes <- loadReferenceDataFromXSD("Q:/mynd/RDB/RDBES/XSD-files/Enumerators/", recursive = T)

