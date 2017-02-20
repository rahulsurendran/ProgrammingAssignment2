## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        mat <- NULL
        
        setInvMatrix <- function(invMatrix) mat <<- invMatrix
        getInvMatrix <- function() mat
        
        getInputMatrix <- function() x
        
        list(get = getInputMatrix,
             setinverse = setInvMatrix,
             getinverse = getInvMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invMatrix <- x$getinverse()
        
        if(!is.null(invMatrix)) {
                message("getting cached data")
                return(invMatrix)
        }
        
        unInvMatrix <- x$get()
        invMatrix <- solve(unInvMatrix)
        x$setinverse(invMatrix)
        invMatrix
}
