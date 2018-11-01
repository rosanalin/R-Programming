### DATA INPUT AND OUTPUT ###

# Download to your computer:
# help.Rdata
# sampledatafile.txt
# help.xlsx
# help.sas7bdat

##########    INPUT  ######################

# NATIVE DATA SETS (".Rdata" files)
/
#  Menu:  File -> Open File...
#  Find and open the "help.Rdata" file

#  Code produced:
load("~/Learning/MS_Applied_Stat/STAT521/help.Rdata")

#  In "Environment" tab, Global Environment, Data, select "helpdata"
#  Code produced:
View(helpdata)

# FIXED FORMAT TEXT FILES (".txt", ".csv" files)

# From "Import Dataset" select "From Text (readr)"
# In File/URL browse to select sampledatafile.txt 
# Change delimiter to "Whitespace" and then import.  
# Code produced:

library(readr)
sampledatafile <- read_table2("Learning/MS_Applied_Stat/STAT521/sampledatafile.txt")
View(sampledatafile)

# Can modify the code...name of data set, * as "NA" (look in help!)



# other similar commands:  read.table(), scan(), readLines()

# From "Import Dataset" select "From Text (base)"
# In File/URL browse to select sampledatafile.txt 
# Change delimiter to "na.strings" to *, uncheck strings as factors and then import.  
# Code produced:
sampledatafile <- read.csv("Learning/MS_Applied_Stat/STAT521/sampledatafile.txt", sep="", na.strings="*", stringsAsFactors=FALSE)
View(sampledatafile)

# EXCEL FILES (".xlsx", ".xls" files)

# From "Import Dataset" select "From Excel..."
# In File/URL browse to select help.xlsx 
# In the "Sheet" option choose "Help";  change name if you wish 
# Code produced:
library(readxl)
help <- read_excel("Learning/MS_Applied_Stat/STAT521/help.xlsx", sheet = "help")
View(help)

# SAS FILES (".sasybdat" files)

# From "Import Dataset" select "From SAS..."
# In File/URL browse to select help.sas7bdat, then import
# Note there is a package "sas7bdat" which may provide more options
# Code produced:
library(haven)
help <- read_sas("Learning/MS_Applied_Stat/STAT521/help.sas7bdat", NULL)
View(help)

### The package "foreign" has functions to read files of many other types!

#  FILES FROM THE WEB
installed.packages("Rcurl")
library(RCurl)   # note:  may need to install this package!
name.url <- "http://ww2.amstat.org/publications/jse/v9n2/4cdata.txt"
diamonds <- read.table(name.url)
View(diamonds)

# need to add variable names!
names(diamonds) = c("Carat","Color","Clarity","Cert","Price")
View(diamonds)
#  MANUAL DATA ENTRY:  install package "editData" and use command "editData(dataname)"

##########    OUTPUT  ######################

# Menu:  Session -> Set Working Directory
setwd("Learning/MS_Applied_Stat/STAT521/")

# saving a dataset as .Rdata
save(diamonds,file = 'diamonds_class.Rdata')

# saving a dataset in text format
write.csv(diamonds, file = 'diamonds_csv.csv')

# saving a dataset in SAS format
library(foreign)     # may need to install
write.foreign(diamonds, "diamonds", "readindiamonds", package = "SAS")   

###  other packages/commands see text Chapter 1

# display of output

x = c(2.111122223333, 3.2222111100001111)
x
# display fewer digits (default is 7)
options(digits = 4)
x





