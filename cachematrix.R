## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# with getM returns the matrix
# with setM save the new matrix
# with setInvert send the inverse
# with getInvert returns the inverse

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  setM<-function(nM){
    x<<-nM
    i<-NULL
  }
  getM<-function()x
  setInvert<-function(nI)i<<-nI
  getInvert<-function()i
  list(setM=setM,getM=getM,setInvert=setInvert,getInvert=getInvert)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i<-x$getInvert()
  if(!is.null(i)){
    return(i)
  }
  i<-solve(x$getM())
  x$setInvert(i)
  i
}


