## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatriv3 <- function(v3 = matriv3()) {
  v1 <- NULL
  set <- function(v2){
    v3 <<- v2
    v1 <<- NULL
  }
  get <- function()v3
  setInverse <- function(inverse) v1 <<- inverse
  getInverse <- function() v1 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(v3, ...) {
  ## Return a matriv3 that is the inverse of 'v3'
  v1 <- v3$getInverse()
  if(!is.null(v1)){
    message("retrieving data")
    return(v1)
  }
  mat <- v3$get()
  v1 <- solve(mat,...)
  v3$setInverse(v1)
  v1
}


