## makeCacheMatrix creates a special matrix object, and then cacheSolve 
## calculates the inverse of the matrix.
## If the matrix inverse has already been calculated, it will instead 
## find it in the cache and return it, and not calculate it again.

makeCacheMatrix <- function(x = matrix()) {		#function to create special matrix object
  m<-NULL										#initialize m to store inverse of matrix
  set<-function(y){								#set() which can be used to set the values of x and m in any other environment
  x<<-y
  m<<-NULL
}
get<-function() x							#get() to retrieve the value of original matrix
setmatrix<-function(solve) m<<- solve		#setmatrix() to calculate inverse of matrix
getmatrix<-function() m						#getmatrix() to get the inverse matrix
list(set=set, get=get,			#function creates a list of functions to set and get the matrix 
   setmatrix=setmatrix,			#also to set and  get the inverse of matrix
   getmatrix=getmatrix)
}
## Call to above function
## a <- makeCacheMatrix()
## a$set(matrix(c(1,2,3,4),nrow=2,ncol=2))
###################################################################################################
## The function cacheSolve returns the inverse of a matrix A created with
## the makeCacheMatrix function.
## If the cached inverse is available, cacheSolve retrieves it, while if
## not, it computes, caches, and returns it.

cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()					#call to getmatrix() to asign the cached inverse to m from memory
    if(!is.null(m)){					#check if m is null
      message("Getting cached data")	#display the message for cached data
      return(m)
    }
    matrix<-x$get()			#if no cached data found, get the matrix
    m<-solve(matrix, ...)	#solve() to calculate the inverse of the matrix
    x$setmatrix(m)			#store the calculated inverse to cache
    m						#return the inverse of matrix
}
## Call to above function with object a and get inverse of a
## cacheSolve(a)
 ##    [,1] [,2]
##[1,]   -2  1.5
##[2,]    1 -0.5