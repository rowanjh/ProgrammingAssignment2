## Cache a matrix inversion value
## functions do

## This function stores the values and the 
makeCacheMatrix <- function(x = matrix()) {
      i <<- NULL
      get <- function() x
      set <- function(y){
            x <<- y
            i <<- NULL
      }
      getinversion <- function() i
      setinversion <- function(inversion){
            i <<- inversion
      }
      list(get = get, set = set, 
           getinversion = getinversion, 
           setinversion = setinversion)
}


## Input must be a list in the format of objects output by makeCacheMatrix.

cacheSolve <- function(x, ...) {
      ii <- x$getinversion()
      if (!is.null(ii)){
            message("Getting cached data")
            return(ii)
      }
      data <- solve(x$get())
      x$setinversion(data)
      
}
