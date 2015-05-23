#Question 1

library(datasets)
data(iris)
?iris
iris
head(iris)
?tapply
?apply
?gl
?colMeans
str(colMeans)
?split
?elt
f
groupings
groupings2

f <- gl(3, 50, length = 150)
groupings <- split(iris, f)
groupings2 <- split(iris, iris$Species)

lapply(groupings2, function(x) colMeans(x[,c(1,2,3,4)], na.rm = TRUE) )

sapply(groupings2, function(x) colMeans(x[,c(1,2,3,4)], na.rm = TRUE))


#Question 2
apply(iris[, 1:4], 1, mean)
rowMeans(iris[, 1:4])
*apply(iris[, 1:4], 2, mean)
apply(iris, 2, mean)

#Question 3
library(datasets)
data(mtcars)
?mtcars
mtcars
class(mtcars)
table(mtcars$cyl)

apply(mtcars, 2, mean)
lapply(mtcars, mean)
mean(mtcars$mpg, mtcars$cyl)
*tapply(mtcars$mpg, mtcars$cyl, mean)

#Question 4
?abs
ob1
ob2
mtcars$cyl==4
mtcars$cyl
mtcars$hp[mtcars$cyl==4]
abs(x[ob1 - ob2])
?mapply
?sapply

ob1 <- tapply(mtcars$hp[mtcars$cyl==4], mtcars$cyl[mtcars$cyl==4], mean)
ob2 <- tapply(mtcars$hp[mtcars$cyl==8], mtcars$cyl[mtcars$cyl==8], mean)
abs(ob1-ob2)

ob1 <- tapply(mtcars$hp[mtcars$cyl==4], mtcars$cyl[mtcars$cyl==4], mean)
ob2 <- tapply(mtcars$hp[mtcars$cyl==8], mtcars$cyl[mtcars$cyl==8], mean)
sapply(mtcars$hp[mtcars$cyl==4], mean)
abs(ob1-ob2)


mapply(function(x) abs(sum[vhp4 - vhp8),vhp4, vhp8)

#Question 5
debug(ls)
ls()



