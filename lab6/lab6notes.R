
#multivariate visualization

#scatterplots
plot(iris$Sepal.Length, iris$Sepal.Width)

with(iris, plot(Sepal.Length, Sepal.Width,
                col = as.numeric(Species),
                pch = as.numeric(Species),
                xlab = "Length", ylab = "Width",
                main = "Dimensions of sepal"
                ))
#add legend
legend(6, 4.5, #coordinates of legend
       c("setosa", "versicolor", "virginica"),
       col = 1:3,
       pch = 1:3,
       cex = 0.6) #scales down size

#making mulitple plots in one frame
old_par = par()
par(mfrow = c(1,3)) #creates a grid for plotting 3 plots side by side

iris_set = subset(iris, subset = Species == "setosa")
iris_ver = subset(iris, subset = Species == "versicolor")
iris_virg = subset(iris, subset = Species == "virginica")
wid = range(iris$Sepal.Width)
len = range(iris$Sepal.Length)

#Then plot them all
#Setosa
plot(Sepal.Width~Sepal.Length, data = iris_set,
     ylim = wid, xlim = len, main = "Setosa")
#versicolor
plot(Sepal.Width~Sepal.Length, data = iris_ver,
     ylim = wid, xlim = len, main = "Versicolor")
#Virginica
plot(Sepal.Width~Sepal.Length, data = iris_virg,
     ylim = wid, xlim = len, main = "Virginica")
#remember to chance back to old par settings
par(old_par)


#bubble plot
library(UsingR)
data(SAT)
head(SAT)
plot(total~salary, data = SAT,
     pch = 16, #filled bubble
     col = rgb(0,0,0,.25),
     cex = sqrt(perc/10) #idk if this is right
)


#scatter plot
pairs(iris[c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")],
      col = iris$Species)


#parallel coordinate plot
library(MASS)
parcoord(iris(c("Sepal.length", "Sepad.Width", "Petal.Length", "PEtal.Width")),
         col = iris$Species)
     

#heatmap - must take a matrix
heatmap(as.matrix(mtcars), Rowv = NA, Colv = NA)
#should normalize via scale function
normcars = sapply(mtcars, scale)
rownames(normcars) = rownames(mtcars)
heatmap(as.matrix(normcars, Rowv = NA, Colv = NA))
