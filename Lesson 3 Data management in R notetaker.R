### DATA MANAGEMENT IN R ###

## DATA FRAMES ##
# create a data frame using state data
states = data.frame(state.abb,state.area, state.center, state.name, state.division,state.region)
objects()     # see objects in R workspace
rm(a)         # remove from workspace
str(states)   # see types of variables in dataframe
View(states)  # display dataset in console
summary(states) # summarize dataframe
length(states)  # see number of objects in dataframe
length(states$state.abb) # length of an object in dataframe
nrow(states)  # another way to see dimensions
ncol(states)
dim(states)

states$index = c(1:50)  # add a variable to a data frame (could use data.frame)

states$state.abb[1:5]# display one variable (first observations)

library(editData)  #Editing data (my version does not support)
editData

### MERGE, COMBINE, SUBSET DATASETS ###

southreg = states[state.region == 'South',]  # subset by observations
southreg
westreg = subset(states, state.region == 'West')
View(westreg)

# subset by variables
subset(southreg, select = c(x,y))
southreg[,c("x",'y')]
southreg[,-8]

southreg[order(southreg$state.area),]  # order dataset by variable
southandwest = rbind(southreg,westreg) #concatenate (stack) datasets

# merging data sets
income.dat=data.frame(id=c(1,1,1,2,2,2,3,3,3),gender=c(0,0,0,1,1,1,0,0,0),
                      income=c(5500,5000,6000,2000,2100,1900,4325,4000,3000))
new.dat=data.frame(id=c(1,2,4),race=c("W","B","O"))
View(income.dat)
merge.dat = merge(income.dat, new.dat, by = "id")    # only include shared data
View(merge.dat)
merge2.dat = merge(income.dat, new.dat, by = "id", all = TRUE)    # include all
View(merge2.dat)
### VARIABLE TYPES  ###

typeof(state.region)  # variable type
attributes(state.region)  # attributes of a variable

table(state.region)   # summary for factor/string

# summary for numerical
numvar=c(1,3,5,7)        
strvar= as.character(numvar)     # convert numerical to string
typeof(numvar)
typeof(strvar)
attributes(strvar)
factorvar= factor(strvar)     # create a factor variable
factorvar= factor(strvar, labels = c("one","three", "five","seven"))     # 
typeof(factorvar)
attributes(factorvar)

as.numeric(factorvar)   # quick conversions of types
as.factor(numvar)       # as.character, as.integer, is.numeric, etc

### DATE/TIME (pesky!)

today= as.Date(Sys.Date())           # create a date variable
today
datevar=as.Date("2018-09-01")
datevar - today# difference in dates

weekdays(datevar)  # extract day
months(datevar)  # extract month
as.POSIXct(datevar)  # represent date as a string (time) 
substr(as.POSIXct(datevar),1,4)  # extract year 

now=  Sys.time()                  # time variables
now - as.POSIXct(datevar)# difference in time
