## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix <- function(x = matrix()) {

##}


## Write a short comment describing this function

## cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
##}

makeCacheMatrix <- function(x = matrix()) {
    inve <- NULL
    set <- function(y) {
        x <<- y
        inve <<- NULL
    }
    get <- function() x
    setinv <- function(inverse) inve <<- inverse
    getinv <- function() inve

    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


cacheSolve <- function(x, ...) {
    inve <- x$getinv()

    if (!is.null(inve)) {
        message("getting cached data")
        return(inve)
    }

    data <- x$get()
    inve <- solve(data, ...)

    x$setinv(inve)
    inve
}
