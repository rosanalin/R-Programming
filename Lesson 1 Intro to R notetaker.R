### INTRODUCTION TO R and R STUDIO ###

## Running code ##

source("http://www.amherst.edu/~nhorton/sasr2/examples/sampsess.R",echo = TRUE)


## Finding HELP! ##

?mean
help("mean")
help(mean)
RSiteSearch("mean")
help.start()
help.search("mean")
# Use Help tab in RStudio - home, search engine & keywords


##  ADD-ONS:  PACKAGES ##

install.packages("Hmisc")        # install a package
library("Hmisc")                 # attach a package
update.packages("Hmisc")          # update a package (if needed)
# EZ: see Packages tab in RStudio!
# Text has a list in Appendix B.6


##  SOME BASICS ##

# R as a calculator
# addition
3+5
# multiplication
3*5
# exponentiation
3^5
3**5
# save values in a variable
# set x to equal 2
x=2
# use of assignment operator (can avoid confusion)
x<-2

# display objects in R
ls()

# create vectors  
l2 = 1:10   
l3 = seq(1,10,2) # seq function
l4 = seq(100,50,-5)
l1 = c(l2,l3)     # concatenate operation
l5 = rep(1:5,5)  # rep function

# vector operations
# useful commands: sort, length
l3*2              # multiply by constant
l3[3]             # extract an element
l3[-2]            # remove an element
l3[2] <- 2        # replace an element

# vector mulitplication with *
# vector addition with +

l3+l2              # logical expressions (==,!=,>,<,>=,<=)
l3 <6
sum(l3[l3<6])          # use as index

# lists (and objects)

mylist = list(x1 = "God", x2 = "is" , x3 = "Good")  # create list of objects
mylist[3]     # pull out objects from a list
mylist[[3]]
mylist$x3
# matrices
y = 1:6
B = matrix(y, nrow = 2, ncol = 3)               # create a matrix from y
B = matrix(y, nrow = 2, ncol = 3, byrow = TRUE)             
B[1,2]                           # extract an element
B[1,]                            # extract a row

# data frames
var1 = c(1:100)
var2 = seq(1,200,2)
dataset1 = data.frame(var1, var2)    # create a data set
myvar = dataset1$var2                     # extract a variable
dataset1$var2[50]                 # extract a value

# a bit more on matrices
C =                # create matrix command (rbind too)
  # apply function
  
  
  #### R TIP OF THE DAY:  in console, use up arrow... ####

# EXAMPLE OF SCRIPT TO PREPARE HOMEWORK

# Question 1
x=c(1,2,3)
x
