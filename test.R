data("cars")
plot(cars)
hist(cars$speed)
gpa <- c(3.45, 2.79, 3.22, 2.98)
str(gpa)
gpa[1:3]
fst_name <- c("ajmal","zafar","Saem","Jea")
pass <- c(TRUE, FALSE,  TRUE, TRUE)
gender <- c("M", "M" , "M"  , "F" )
str(gender)
gender <- factor(gender)
gender <- factor(gender, levels=c("M","F" ))
ls()
df1 <- data.frame(fst_name, gender, gpa, pass)
str(df1)
ls()
str(fst_name)
df1 <- data.frame(fst_name,gender,gpa,pass, stringsAsFactors = TRUE)
str(df1)
df4 <- read.csv("usedcars.csv", stringsAsFactors = TRUE)
str(df4)
gray_Car <- subset(df4, mileage > 1000 && color %in% "Gray" )
str(gray_Car)  
table(df4$color)
df4[c(1,3,5) , "price" ]
df4[c(1,3,5) , c(3,5) ]
df4[c(1,3,5) , c("price", "color" )]
table(df4$transmission)
length(df4$color)
pie(table(df4$color))
barplot(table(df4$color))
plot(df4$mileage ~ df4$transmission, data=df4)
matrix(2:26, nrow = 5, ncol = 5)
x <- factor(c("single", "married", "married", "single")); 
x
