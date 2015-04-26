## Two functions bellow should calculate and cache inversion of matrix
## First assign your matrix to x

## this function should cache a matrix 

makeCacheMatrix <- function(x) {
  m<-NULL
  set<- function(y) {
    x<<- y
    m<<-NULL
  }
  get <-function() x
  setcache<- function(solve(x))  m<<- solve
  getcache<- function() m
  list(set=set, get=get, setcache=setcache, getcache=getcache)
}

## This function should inverse a matrix with solve if it was noc cached before

cacheSolve <- function(x, ...) {
  m<- x$getcache()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data<- x$get()
  m<- solve(data)
  x$setcache(m)
  m
}