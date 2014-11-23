## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<-inverse
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
  
## Above are the functions that cashe the inverse matrix

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if ( ! is.null(m)) {
    print("getting cached matrix")
    return(m)
  }
  m <- solve(x$get())
  x$setInverse(m)
  m
}
## This function calculates the inverse matrix or takes aalready
## calculated invesrse matrix saved in cashe
