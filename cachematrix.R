## Put comments here that give an overall description of what your
## functions do

## Just rewrote the mean function replaced every mean with inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Same as above. Seems to work fine.

cacheSolve <- function(x, ...) {
  a <- x$getinverse()
  if(!is.null(a)) {
    message("getting cached inverse matrix")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setinverse(a)
  a
}

