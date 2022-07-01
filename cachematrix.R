## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function() {
    inv <<- solve(x) ## Here the solve function is used to calculate the inverse of a matrix
    inv }
  getInverse <- function() inv
  list(set = set,     
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)  ##returning a list
}
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {  ##checking if the inverse of the matrix alreadu exists or not
    message("getting cached data")
    return(inv)
  }
  inv <- x$setInverse()
  inv  ##returning the inverse
}
