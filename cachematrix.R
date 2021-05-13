## the pair of functions finds the inverse of a given matrix
## by caching it from another function

## the function is used to create a special matrix and 
## set and get it's inverse as and when required

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- fucntion(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inverse <<- solve
  getinverse <- function() inverse
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## the function is used to retrieve the inverse of the matrix
## if inverse is not present it finds the inverse ands sets it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)){
    message("getting cached inverse")
    return(inverse)
  }
    mat <- x$get()
    inverse <- solve(mat, ...)
    x$setinverse(inverse)
    inverse
    
  }
