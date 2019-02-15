getwd() #its return the absoulte path of working directory \
boxplot(df4$mileage) #it shows vertical vertical box plot
#  Box plot shows
# 1. shape
# 2. spread
# 3. outlier
# 4. Quartiles i.e. q1,Q2(median),Q3
# 5. Median
# 6. Skewness
# 7. Kurtosis 
# It is univariate graph  there is no importance of Y-axis. Doted shows that OUTLIERS
# Fence, lower Fence near to origin and Upper Fence near to Outlier
# IQR(inter Quartile Range) shows  the width of box. Formula IQR= Q3-Q1
# UpFence= Q3+1.5*IQR. . . . lowFence=Q1-1.5*IQR
# If the box is at left called Right Skew 
# Position of the box shows Density of the data.
plot(mileage ~ transmission, data=df3, horizontal = TRUE)
# Result
# the manaul Car have no Outlier
# Auto car have high spread as compare to manual
# Approx same IQR
# Both have same skewness
tapply()
#tapply(vector, index, function) It is  the loop a/c to parameter values should be passed 
plot(price ~ mileage, data=df4, pch=as.integer(transmission))
#pch is stand for print character. ..as.integer parse Transmission into int 
