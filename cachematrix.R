## Put comments here that give an overall description of what your
## functions do
## These two functions cache the inverse of a matrix

## Write a short comment describing this function
## 'makeCacheMatrix' function creates a special 'matrix' object 
## that can Cache the inverse of matrix x

makeCacheMatrix <- function(x = matrix()) {
	matrix <- NULL
	set <- function(y){
		x <<- y
		matrix <<- NULL
	}
	get <- function() x
	setinverse <- function() matrix <<- solve(x)
	getinverse <- function() matrix
	list(set = set, get = get, 
		setinverse = setinverse,
		getinverse = getinverse)
}


## Write a short comment describing this function
## 'cacheSolve' function computes the inverse of the special 'matrix'
## returned by the function makeCacheMatrix.
## If the inverse has already been calculated, then the 
## cachesolve should retrieve the inverese from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	matrix <- x$getinverse()
	if(!is.null(matrix)){
		message("getting cached data")
		return(matrix) 
	}	
	data <- x$get()
	matrix <- x$setinverse()
	matrix
}
