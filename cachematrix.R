## Put comments here that give an overall description of what your
## functions do
## These functions made complete Programming Assignment 2 @ Coursera ?? programming Course


## Write a short comment describing this function
## 1st function creates a matrix, included function to set and get the valu?? ???? matrix and it's inverse

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}


## Write a short comment describing this function
## This function inverses given matrix, but first checks for m in cache,
## and returns it (inverse of given matrix) if it is already calculated and stored.

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
}
