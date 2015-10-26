## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
              cm <- NULL
              set <- function(y) {
                x <<- y
                cm <<- NULL
              }
              get <- function() x
              setinverse <- function(Solve) cm <<- inverse
              getinverse <- function() cm
              list(set = set, get = get, 
                   setinverse = setinverse, 
                   getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            cm <- x$getinverse()
            if(!is.null(cm)) {
              message("getting cached data")
              return cm
            }
            data <- x$get()
            cm <- Solve(data, ...)
            x$setinverse(cm)
            cm
}
