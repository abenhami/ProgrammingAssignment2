## Put comments here that give an overall description of what your
## functions do

## The functions below help cache the inverse of a matrix and retrieve it when 
## needed.

## Write a short comment describing this function

## The function creates and stores a special "matrix" and its inverse.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y 
        m <<- NULL
    }
    get <-  function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get, 
         setinverse = setinverse, 
         getinverse = getinverse)
}


## Write a short comment describing this function

## The function calculates the inverse of the matrix, created with 
## the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
