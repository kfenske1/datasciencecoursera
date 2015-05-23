cube <- function(x,n) {
  x^3
}
cube(3)

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

f(3)
z <-10
f(3)

Q4***
y

Q5***
  h <- function(x, y = NULL, d = 3L) {
    z <- cbind(x, d)
    if(!is.null(y))
      z <- z + y
    else
      z <- z + f
    g <- x + y / z
    if(d == 3L)
      return(g)
    g <- g + 10
    g
  }
h(3)

Q6***

  Q10

f = function() 
  c(f=environment(), defined_in=parent.env(environment()),  
    called_from=parent.frame())
g = function() 
  c(g=environment(), f())
g()
f()

 a <- 1:3
 a

 b <- 1:2
 b

 a == b

#Warning message:
#  In a == b : longer object length is not a multiple of shorter object length
 c <- rep(a, 2)
 c

 c == b

 c %in% b

 c == 3

  

  
