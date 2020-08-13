## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix is a container to save the matrix and it's inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
          val <- y
          inv <- NULL
    }
    get <- function() x
    setinverse <- function(inver)inv <<- inver
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}




## Check if x$getinverse()is null, if it's not return the value.
## othewise, calculate the inverse and set it into makeCacheMatrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
    message("getting cached inverse matrix")
    return(i)
  }
    matri <- x$get()
    i <- solve(matri, ...)
    x$setinverse(i)
    i
}


