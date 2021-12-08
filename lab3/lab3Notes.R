###Functions

longest_vec = function(vec1, vec2){
  len1 = length(vec1)
  len2 = length(vec2)
  max(len1,len2)
}

exponent = function(v1,v2){
  v1^v2
}


###Plots
data(rivers)

#stem and leaf
stem(rivers)

#dotplot
stripchart(rivers)
stripchart(rivers, method="stack", main="Length of Rivers",
           xlab="Length (mi)", xlim=c(0,5000), pch=33)

#histogram
hist(rivers, main="Distribution of Lengths of Rivers in North America",
     xlab="Length (mi)", breaks=c(0,200,500,700,800, 2000, 4000)) #custom bin size
hist(rivers, main="Distribution of Lengths of Rivers in North America",
     xlab="Length (mi)", breaks=20, freq=FALSE)

#density curve
plot(density(rivers), main="=Distribution of River Lengths")

#Overlay
hist(rivers, main="Distribution of Lengths of Rivers in North America",
     xlab="Length (mi)", breaks=20, right=TRUE, freq=FALSE, col="magenta", ylim=c(0,0.0025))
lines(density(rivers), col="blue", lwd=2, lty=2) #draw on top of preexisting plot, change color&thickness

#Boxplots
boxplot(rivers)
data(iris)
boxplot(iris$Petal.Width~iris$Species) #$ to access specific variable
boxplot(Petal.Width~Species, data = iris)

#Barchart
library(UsingR)
central.park.cloud
barplot(summary(central.park.cloud))

#Summary
summary(iris)
summary(iris$Petal.Length)
mean(iris$Petal.Length)
median(iris$Petal.Length)

data("exec.pay")
mean(exec.pay)
median(exec.pay)
mean(exec.pay, trim = 0.1) #trimmmed mean

summary(exec.pay)
fivenum(exec.pay)
quantile(exec.pay) #this is better than fivenum
quantile(exec.pay, .99) #99th percentile
quantile(exec.pay, c(.90, .99))
quantile(exec.pay, seq(0,1, by=0.1))
range(exec.pay) #display max and min
diff(range(exec.pay)) #calculate range
var(exec.pay) #variance
sqrt(var(exec.pay)) #standard deviation
sd(exec.pay) #also standard deviation

summary(central.park.cloud)/length(central.park.cloud) #reative frequencies
barchart(summary(central.park.cloud)/length(central.park.cloud))

