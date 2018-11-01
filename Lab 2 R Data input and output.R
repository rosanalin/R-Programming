library(help = "datasets")

# Question 1 #
quakes[1:5,]
# a #
summary(quakes)  
dim(quakes)
names(quakes)
str(quakes)
attributes(quakes)

# b - 100st obs#
quakes[100,]

# c - Subset of quakes #
bigquakes =subset(quakes, quakes$mag > 5)
View(bigquakes)
dim(bigquakes)
sum(quakes$mag)     #Sum Magnitude of original data
sum(bigquakes$mag)  #Sum Magnitude of Big quakes
100*(sum(bigquakes$mag)/sum(quakes$mag))  # % of magnitude from big quakes

# d #
# Menu:  Session -> Set Working Directory
setwd("Learning/MS_Applied_Stat/STAT521/")

# saving a dataset in text format
write.csv(bigquakes, file = 'bigquakes_csv.csv')

# saving a dataset in SAS format
library(foreign)     
write.foreign(bigquakes, datafile ="bigquakes_sas.sasdat", codefile ="bigquakes_sas_codefile", package = "SAS")  

# saving a dataset in Excell format
library("openxlsx")
write.xlsx(bigquakes,file = "bigquakes_xlsx.xlsx", sheetName = "Sheet1", col.names = TRUE, row.names = TRUE, append = FALSE)


# Question 2 #
# a #
objects()
df2 = list(volcano=volcano,rivers=rivers,rock=rock)
summary(df2)
summary(volcano)

# b #
# Menu:  Session -> Set Working Directory
setwd("Learning/MS_Applied_Stat/STAT521/")

dput(df2, file = "df2")

# d #
df2_d = dget("df2")
summary(df2_d)

