## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        ## Initialize the inverse matrix
        inver <- NULL
        
        ## Set the matrix method
        set <- function(y){
                mat <<- matrix
                i <<- NULL
        }
        
        ## Get the matrix method
        get <- function(){
                mat
        }
        
        ## Cache the value of the inverse of the matrix
        setInver <- function(cache) {
                inverse <<- cache
        }
        
        ## Return the value of the inverse matrix
        getInver <- function(){
                Inverse
        }
        
        ## Return the special matrix
        list(set = set, get = get, setInver = setInver, getInver = getInver)

}


## Write a short comment describing this function

## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. 
## If the inverse has already been calculated 
## (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        Invermat <- x$getInver()
        
        ## Return the inverse if set
        if (!is.null(Invermat)) {
                message("Getting the cached matrix")
                return (Invermat)
        }
        
        ## If it's not cached, calculate and cache it, return
        Invermat <- solve(x$get(), ...)
        
        x$setInver(Invermat)
        
        Invermat
}
