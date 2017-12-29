## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

### This is a function that sets a matrix, gets the mean,
### sets the inverse and get the inverse

makeCacheMatrix <- function(x = matrix()) {

    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinv <- function(solve) m <<- solve
    getinv <- function() m
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
  
  
  
  
}


## Write a short comment describing this function

### This is a function that uses the previous functions to
### look in the cache and get the inverse using solve()

cacheSolve <- function(x, ...) {
            ## Return a matrix that is the inverse of 'x'
  
    m <- x$getinv()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
  
    
}


