## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i<-NULL
    setInverse<-function(y) i<<-solve(y)
    getInverse<-function() i
    set<-function(y){
      x<<-y
      i<<-NULL
    }
    get<-function() x
    list(setInverse=setInverse,getInverse=getInverse,get=get)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i<-x$getInverse()
    if(!is.null(i)){
      message("Getting cached data")
      return(i)
    }else{
      x$setInverse(x$get())
      return(x$getInverse())
    }
}
