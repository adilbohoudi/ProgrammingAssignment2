## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # declare a variable  to hold the cache, varChache
  #in the begin, set the cash variable to null
  varCache <- NULL
  
  #store a matrix
  storeMatrix <- function (nwValue){
    x <<- nwValue
    # after te matrix is assigned, set the cache to null
    cache <<- NULL
  }
  
  #get the matrix back
  returnMatrix <- function(){
    x
  }
  
  #set the argument into the cache
  setInCache <- function (cacheValue){
    varCache <<- cacheValue
    
  }
  
  #return chached value
  returnCacheValue <- function (){
    varCache
  }
  
  # return a list of functions
  list(storeMatrix = storeMatrix, returnMatrix = returnMatrix, setInCache=setInCache, returnCacheValue=returnCacheValue )
  
  
}


## this function creates a inverve version of a matrix, created by the function makeCacheMatrix
cacheSolve <- function(x, ...) {
  ## Return the inverse value
  invValue <- y$returnCacheValue()
  
  # if cached value exists get it
  if(!is.null(invValue)){
    message("get the cached elements")
    return(invValue)
  }
  # otherwise, get the matrix and calc the inverse of it and store it
  dt <- y$returnMatrix()
  invValue <- solve(dt)
  y$setInCache(invValue)
  
  # return the inversed value
  invValue
  
  
}
