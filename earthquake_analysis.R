summary(airquality[,1])
earthquake <- datasets::quakes
summary(earthquake)
select.list(earthquake)
head(earthquake,10)
tail(earthquake)
summary(earthquake)
earthquake$depth
plot(earthquake$depth,earthquake$mag,type ="b",col='blue')
plot(earthquake,col='grey')
plot(earthquake$mag,earthquake$depth,xlab="magnitude",ylab="depth",main="coherelation")
#horizontalplot
barplot(earthquake$mag,earthquake$depth,horiz=F,axes=T)
boxplot.stats(earthquake$mag)
library(help = "stats")
earthquake$mag
library(modeest)
mean(earthquake$mag)
mfv(earthquake$depth)
quantile(earthquake$depth(10,),earthquake$mag(10,))
quantile(earthquake$mag,0.25)
quantile(earthquake$mag,0.50)
quantile(earthquake$mag,0.75)
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="n")
plot(earthquake$mag)
plot(earthquake$mag, earthquake$depth)
plot(earthquake$mag, type= "l")
plot(earthquake$mag,earthquake$depth, type= "b")
plot(airquality$Ozone, type= "l")
barplot(earthquake$mag, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = F)
hist(earthquake$mag[1:10,])
boxplot      
boxplot(earthquake[0:100,0:4], main='Multiple Box plots')

