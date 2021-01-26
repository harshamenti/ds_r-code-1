#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

######Columns
airquality[,c(1,2)]

df<-airquality[,-6]

summary(airquality[,1])

airquality$Wind

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 


#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Ozone, xlab = 'Index', 
     ylab = 'Ozone Concentration', main = 'Ozone levels in NY city',
     col = 'blue')

# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")

boxplot.stats(airquality$Wind)$out

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')


#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="n")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot      
boxplot(airquality[,0:4], main='Multiple Box plots')


##Home work
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm = T)

#var
#skewness
#kurtosis
#Density plot

head(e_quakes,10)
tail(e_quakes,10)

summary(e_quakes)
summary(e_quakes$depth)

#plotting-----
plot(e_quakes$lat)
plot(e_quakes$long)
plot(e_quakes$depth)
plot(e_quakes$mag)
plot(e_quakes$stations)

plot(e_quakes)

#boxplot

boxplot(e_quakes$lat)
boxplot(e_quakes$long)
boxplot(e_quakes$depth)
boxplot(e_quakes$mag)
boxplot(e_quakes$stations)

boxplot(e_quakes)

#bar plot

barplot(e_quakes$lat)
barplot(e_quakes$long)

#histograms

hist(e_quakes$long)
hist(e_quakes$depth,xlab = 'ozone levels', col='yellow',horiz = TRUE)
hist(e_quakes$mag)

#ploting variance , skewness and curtosis

skewness(e_quakes$long)
kurtosis(e_quakes$long)
hist(e_quakes$long,breaks = 'FD')
var(e_quakes$long)

qqnorm(e_quakes$long)
