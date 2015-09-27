## two functions, the first creates a special "matrix" that can
## be cached and the second returns the inverse of that matrix.

## creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
output <- NULL
output <<- x
output
}


## computes the inverse of the special "matrix" returned by makeCacheMatrix. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
output <- makeCacheMatrix(x)
if (!is.null(output)){
message("getting cached data")
return(output)
}
output
solve(output)
}
