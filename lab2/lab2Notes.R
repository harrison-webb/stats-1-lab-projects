####Packages

#install it
install.packages("UsingR") #gotta use quotes for the packages

#load it
library("UsingR")


####Datasets
data(rivers) #rivers dataset is now loaded
head(rivers) #show first few entries
str(rivers)
length(rivers)
sum(rivers)
mean(rivers)
rivers/sum(rivers)


data(iris)
head(iris)
#dollar sign to access one variable in a dataframe
iris$Petal.Length


####Vectors
myVec = c(1,2,3,4)
charVector = c("hi", "hello", "hola")
boolVector = c(TRUE, FALSE, TRUE, TRUE)
funcVector = c(mean, sum, sd)
vectorVector = c(c(1,2), c(3,4), c(5,6))
is.vector(vectorVector)
is.vector(5)

#indexing
vectorVector[2]
myVec[-3]  #everything except 3rd element

#named vectors
food = c(chipotle=8, Jinya=8, soup=11)
food["chipotle"]
food[c("chipotle", "soup")]
food[c(TRUE,FALSE,TRUE)]

#renaming
names(food) = c("Ramen", "burrito", "soup")
food
food["burrito"] = 20
food["pizza"] = 55 #create new item
food[5] = 1.2
food[c(1,4,5)] = 44
is.na(food) #check for na values
food[!is.na(food)] #extract non na values


####Other special 'numbers'
Inf #infinity
-Inf
NULL
NaN #not a number


####Other ways to construct vectors
nineVec = 1:9
nineVecBackwards = 9:1

#seq
seq(3,33,by=3) #make list for 3-33, count by 3
seq(3,33,length.out = 100) #make list up to 100 items

#rep
rep(c("a","b","c"), times = 5) #repeat vector 5 times
rep(c("a","b","c"), each = 5) #repeat each element 5 times

#paste
paste("Puppy", 1:8) #make puppies w labels 1-8
paste("Puppy",1:8,sep="_")


####Operations with Vectors
vec1 = c(1,2,5,8)
vec2 = c(7,19,-2,3)
vec1 + vec2
vec1 + 1 #add 1 to each element
sqrt(1:4)


####Boolean
3==0
3>=0
vec1 == vec2
vec1 < 4
3 == 3 & 4==4 #AND
3 == 3 | 4==5 #OR
2%in%vec1 #is 2 in vec1?
any(2==vec1) #is any element in vec1 ==2?
all(2==vec1) #are all elements of vec1 ==2?


####Which
which(vec1==5) #which index has value 5

vec5 = c(2,4,NA)
vec5[which(!is.na(vec5))]


####Factors
iris$Species

colcat1 = factor(c("red", "yellow", "blue", "blue"), levels = c("red", "yellow", "blue"))
colcat1
