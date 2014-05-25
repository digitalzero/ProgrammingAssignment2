## These functions take a matrix and creates functions for this maxtrix
## that allows you to get and set the matrix and the inverse of the matrix.

## Creates functions for setting and getting the matrix and the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
     i <- NULL
     
     set <- function(y) {
          x <<- y
          i <<- NULL
     }
     get <- function() x
     
     setInverse <- function(inverse) i <<- inverse
     getInverse <- function() i
     
     list(set = set, get = get,
          setInverse = setInverse,
          getInverse = getInverse)
}


## Checks to see if there is an inverse value stored in the matrix object, if not
## it creates one and sets the matrix inverse variable to it.
cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     i <- x$getInverse()
     if(!is.null(m)) {
          message("getting cached data")
          return(i)
     }
     data <- x$get()
     i <- solve(data, ...)
     x$setInverse(i)
     i
}
