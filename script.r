df3 <- read.csv("usedcars.csv") # retrieve data from  Hard disk to RAM
str(df3)  #show the structure of usedcars.csv i.e. df3
df4 <- read.csv("usedcars.csv", stringsAsFactors = FALSE)
dstr(df4)
yellow_cars <-
  subset(df4, color %in% "Yellow")  # make a subset of data from color which is yellow
high_mileage <-
  subset(df4, mileage > 100000) # make a subset of data from mileage which ride > 10000
str(df3$transmission)  #show structure of transmission variable which is attribute of DF3
typeof(yellow_cars)  # show the type of yellow_cars variable. i.e. list
typeof(high_mileage) # show the type of high_mileage variable. i.e. list
df3[c(1, 2, 3), c(2, 3)] # first parameter shows rows and second shows coloumn. c() its show combine row or coloum
df3[c(1, 2, 3), -c(2, 3)] # -(minus) exclude mentioned coloumn or Rows
(table(df3$transmission) / length(df3$transmission) * 100) # its calculate Probablity i.e. favourable outcome  divided by total outcome
pie(table(df3$transmission)) # Draw pie chart
mean(df3$mileage) # calculate mean
median(df3$mileage) # calculate median
var(df3$mileage) # calculate variation
hist(df3$mileage) # Draw Histogram
x11()
