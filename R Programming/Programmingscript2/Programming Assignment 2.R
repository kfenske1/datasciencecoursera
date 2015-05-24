

#Example Step 1
makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
  
  #Example Step 2
  cachemean <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
  }


#Scratch:
class(m)
?get



#Richard's bits

dodo <- c(3, 7, 44, 13, 2, 24, 51, 16, 4, 4)
aa <- makeVector(dodo)

bb <- cachemean(aa)



dada <- c(1, 2, 3, 4)  # a new data vector
cc                      # which means the new vector (set of data) 
                        #is now associated with aa
                        # and note we ran set() without invoking 
                        #cachemean or makeVector

cc                         # its looks like nothing is in cc despite assignment
NULL
str(cc)
NULL                       # it still looks meaningless

bingo <-cachemean(aa)      # but if we try cachemean, just like we did orginally using aa
bingo                      # and print the results, we should see the correct mean for the 
[1]  2.5                   # data vector named dada, rather than the results for dodo 
mean(dada)                 # and sure enough, cachemean comes back with the 
[a]  2.5    

#other
g <- 10
makeVector(g)
zippy <- c(4, 3, 74, 11)

drop <- makeVector(zippy)
drop
flop <- cachemean(drop)
flop

#working

?solve

hilbert <- function(n) { i <- 1:n; 1 / outer(i - 1, i, "+") }
hilbert
h8 <- hilbert(8);
h8
sh8 <- solve(h8)
sh8
round(sh8 %*% h8, 3)

A <- hilbert(4)
A
A[] <- as.complex(A)
A[]
## might not be supported on all platforms
try(solve(A))
?try

