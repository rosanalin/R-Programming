
# Question 1 #

df1 = data.frame(ID = c(1,2,3,7,8,9),
                Person = I(c('Stan','Joe','Hayley','Roger','Mary','Steve')),
                Sex = c('M','M','M','M','F','F'),
                Funny =c('High','Med','Low','High','High','Low'))
View(df1)
str(df1)

# Question 2 #

df2_Age= data.frame(ID = c(1,2,3,7,8,9),
                    Age = c(41,60,21,1600,41,15))
View(df2_Age)

#Merging data frame #
df2 = merge(df1,df2_Age, by="ID",all=TRUE) 

View(df2)

#Print las 4 records

tail(df2,4)

# Question 3 #

# a #
df3 = data.frame(ID = c(4,5,6),
                 Person = I(c('Peter', 'Lois', 'Meg')),
                 Sex = c('M','F','F'),
                 Funny = c('High','High','Low'),
                 Age = c(42,40,17))
View(df3)           

# b #
df3_b = rbind(df2,df3) #concatenate (stack) datasets
df3_b[order(df3_b$ID),]  # order dataset by variable

# c #
summary(df3_b)

# d #
df3_b[df3_b$Sex =='F',]
df3_b

# e #
df3_b[((df3_b$Sex =='F') & (df3_b$Funny != 'Low')),]
df3_b

# Question 4 #

# a #
df4 = data.frame(ID = c(1,2,4,5,7),
                 EnterStudy = I(c('July 12, 2017', 'March 4, 2016', 'April 1, 2018','May 5, 2017','November 11, 2016')),
                 Group = c(0,1,0,2,1))
View( df4)
str(df4)
typeof(df4$EnterStudy)

df4$EnterStudy = as.Date(df4$EnterStudy, format = "%B %e, %Y") #doesnt work
df4$EnterStudy = strptime(df4$EnterStudy, "%B %e, %Y")
str(df4)

#Merging data frame #
df4_a = merge(df3_b,df4, by="ID",all=TRUE) 
View(df4_a)

# b #
t_stan_peter = df4_a$EnterStudy[1] - df4_a$EnterStudy[4]
t_stan_peter

# c #
df4_a$Group= factor(df4_a$Group, labels = c("Control","Low intensity", "High intensity"))     
View(df4_a)