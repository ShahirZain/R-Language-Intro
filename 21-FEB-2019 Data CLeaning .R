# one of big issue in data is
# 1. NA
# 2. Nan
# is.na() checks whether the variable have missing number or not. its checks every observation
# any(is.na()) checks entire table output is true and false
# colSums(is.na()) checks how much missing in col
# sum(is.na()) checks enitre table's missing
# not missing checks sum(!is.na())
# na.omit() its remove the missing number 
# sum(is.na(sf$solar.R)) is check the particular column missing
# nrow() tells how much rows are present
# df <- df[, colSums((is.na(df)))<10] checks where the data is missing less than 10
# impute is when number is missing its analys whole data then filled the particular observation
# there are two type of imputation
# 1. mean imputation
# 2. median imputation
# if the data is missing we can't calculate mean median and standard deviation
# we have to ignore the missing values by using !(not)  operator 
# we can check mean imputation by finding out SD


#CODING
 
df <- airquality  # load to ram
str(df)   # show structure
is.na(df) # checks every entire row
any(is.na(df)) # check whether the row and column is missing or not
sum(is.na(df)) # sum all the missing values in entire table
colSums(is.na(df)) #its sum all the missing value in a particular column
colSums(!is.na(df)) #it sum all the values and ignores missing value

colSums(df)

df[,7] <- c(NA)  

df[154,] <- c(NA) 

any(is.na(df)) 

is.na(df)
getOption("max.print")


# how many total NA's are there 
sum(is.na(df))

# removing column number 7 because it is full of NA's 
df <- df[,-7] 

str(df) 

df <- df[-154,] 
str(df) 

any(is.na(df))

# now we check in which column we have how many na's 
sum(is.na(df$Solar.R))

# we can use na.omit function to remove all missing cases 

df.clean <- na.omit(df)

str(df.clean)

df.clean2 <- na.omit(df[,-1]) 
nrow(df.clean2)
ncol(df.clean2)


# we can implement a rule of keeping all columns in which na are less than 10 
df.clean3 <- df[, colSums(is.na(df))<10] 
nrow(df.clean3)

# if we are computing mean, median and standard deviation of variable having missin number  
# then the result will also be NA 
mean(airquality$Solar.R) 
median(airquality$Solar.R) 
sd(airquality$Solar.R)

# All three results are NA's 
mean(!is.na(airquality$Solar.R)) 
sd(!is.na(airquality$Solar.R))

## IMPUTATION BY MEAN AND MEDIAN 
# instead of deleting missing rows we can impute them by mean or by median 
df.meanImputed <- df 
df.medianImputed <- df  

df.meanImputed$Solar.R[is.na(df.meanImputed$Solar.R)] <-  mean(!is.na(df.meanImputed$Solar.R))
str(df.meanImputed$Solar.R)

df.medianImputed$Solar.R[is.na(df.medianImputed$Solar.R)] <-  median(!is.na(df.medianImputed$Solar.R)) 

str(df.medianImputed$Solar.R)

# OUTLIERS
# 1. Univaribale
# 2. Bivariable

# Removing outliers from the data 
str(df.clean2) 
boxplot(df.clean2$Temp , horizontal = TRUE)  
#left dotted line shows LEFT WHISKER
# Right dotted line shows RIGHT WHISKER 
# No outlier in Temp variable 
boxplot(df.clean2$Wind) 
# There are three outliers in the Wind variable 
summary(df.clean2$Wind) 
# 1st quartile => Q1
# Median => Q2
# Mean => x bar
# 3rd => 3rd Quartile
# IQR = Q3 - Q1 => 4.1
# Upper fence = Q3 + IQR * 1.5 => 17.65
# Lower fence = Q1 - IQR * 1.5 => 1.25
Q1=quantile(df.clean2$Wind,0.25)
Q3=quantile(df.clean2$Wind,0.75)
IQR_wind=Q3-Q1 
upFenceWind <- Q3 + 1.5 * IQR_wind

df.clean4 <- subset(df.clean2,Wind<=upFenceWind)

boxplot(df.clean4)
# box plot of clean4 shows no outlier in any of the variable
boxplot(df.clean4$Wind)
# no other variable have outliers
str(df.clean4)

# checking for duplicates
str(df.clean4)
str(unique(df.clean4))
# we duplicate the 130 row at the 145 position
df.clean4[145,]<- df.clean4[130,]
str(df.clean4)
df.clean4[c(130,145),]
df.clean4[c(144,130),]

str(df.clean4Distinct)
