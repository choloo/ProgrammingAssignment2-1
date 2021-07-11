## the creation of funtions aims to aims to exercise that either in the activity
## to restore nor cache inverse of the matrix

## the makeCacheMatrix: has a function to store data's inverse by funtion that orders a matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
        
        
}
        
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}



## the cacheSolve: was restored by the makeCacheMatrix. by the use cacheSolve whose function authenticates the matrix' inverse
## the function of cacheSolve would attempt to recover inverse from cache due to the occurrence of the inverse's cmputation.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv}
