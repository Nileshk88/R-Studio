ages=c(21,32,43,34,54,25,27,36)
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,52000,25000)
plot(salary)
# In doTryCatch(return(expr), name, parentenv, handler) :
# invalid graphics state - Solution to this warning: Install ggplot2 from packages


plot(ages,salary)
plot(salary,ages)

help(plot)
###########################

#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
#Click on Import Ddataset

data()
airquality=datasets::airquality

###top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) #names of all columns

# To see entire dataset click on airquality data set name on top right window 
######Columns

airquality[,c(1,2)] #all rows and first two column
df=airquality[,-6] #excludes column no.6
df

summary(airquality[,1]) # summary statistics for column 1
summary(airquality$Temp) 
airquality$Wind  # display column values
###############summary of the data #######

summary(airquality)  # summary for all columns

#################visualization ######

plot(airquality$Wind)
plot(airquality)
plot(airquality$Temp,airquality$wind,type="p")
help(plot)

plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)

#points and lines
plot(airquality$Wind,type="p")
plot(airquality$Wind,type="l")
plot(airquality$Wind,type="b")
help(plot)

plot(airquality$Wind,
xlab="Ozone concentraction",
ylab="No of instances",
main="Ozone Levels in my city",
col="red",
type='l')

plot(airquality,col='red')  # plot of entire dataset - all columns
plot(airquality$Ozone,airquality$Solar.R) # x axis - Ozone, Y- solar.r
plot(airquality$Solar.R,airquality$Ozone) # x - solar.r, y - ozone

#horizontal bar plot
barplot(airquality$Ozone,
        main='Ozone concenteration in air',
        ylab='Ozone levels',
        col='blue',
        horiz=T,
        axes=F)
help(barplot)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main='solar radiation values in air',
     xlab='solar rad.',
     col='orange',
     border='red')
help(hist)

#single box plot
help(boxplot)
boxplot(airquality$Wind,
        main='boxplot',
        border='red',
        horizontal=T)

boxplot.stats(airquality$Wind)$out  #outlier values
airquality$Wind

#multiple box plots
boxplot(airquality[1:4],
        main='multiple box plot',
        horizontal=T,
        col='brown')

#margin of the grid(mar)(bottom,left,top,right)
#no of rows and columns(nfrow)
#whether a border is to be included(bty)
#and positin of the
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)

help(par)
par(mfrow=c(2,3),mar=c(3,4,1,2),las=1,bty='n')
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type='l')
plot(airquality$Wind,type='l')
plot(airquality$Solar.R,type='l')
barplot(airquality$Ozone,main='ozone level',xlab='ozone',col='green',horiz=T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='multiple box plots')

#considering NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Temp)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm=T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm=T)

#Google following functions as variance in R,
#var
#skewness
#kurtosis
#density plot

var(airquality$Ozone)
var(airquality$Ozone,na.rm=T) #,na.rm = T) Standard Deviation # because of NA values in ozone
sd(airquality$Ozone)
sd(airquality$Ozone,na.rm=T)
skewness(airquality$Ozone) #ERROR

# Installing Packages

# when function is not available you have to install some packages/libraries.
# eg. mobile has some in built apps 
# - others download scanner, whatsapp, photo editor from play store
# which library to download for skewness
#google - skewness and kurtosis in r
# go to rbloggers.com
# library(moments)
# or go to rdocumentation.r
# type skewness - you will get the name of package as 'moments'
# go to rstudio
# click on packages in 3rd window - bottom right corner - Click on install
# type moments in packages, click checkbox - install dependencies - click install
# After installation, in search - search for installed 'moments', click that checkbox

# Or try: install.packages("moments")

skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone) #error
kurtosis(airquality$Ozone,na.rm=T)
skewness(airquality[,1:4],na.rm=T)

#Density plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))
??density

#homework
e_quakes=datasets::quakes



#var

var(e_quakes$mag)

#skewness

skewness(e_quakes$mag) 


skewness(e_quakes$mag)

mean(e_quakes$mag)

#kurtosis

kurtosis(e_quakes$mag)



# HOME WORK
# iris_data<-datasets::iris
# perform all steps on iris dataset that you have performed on airquality and quakes dataset


# to import xml files in R, first install XML package
# 
install.packages("XML")





