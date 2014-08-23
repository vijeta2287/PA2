PA2
===
Programming Assignment 2 for R Programming|Coursera

This code provides two functions to calculate and cache the inverse of a given matrix.
First function creates and stores a matrix object. Below is an example:
> a<-makeCacheMatrix()
> a$set(matrix(c(1,1,1,3,4,3,3,3,4),nrow=3,ncol=3))
> cacheSolve(a)
     [,1] [,2] [,3]
[1,]    7   -3   -3
[2,]   -1    1    0
[3,]   -1    0    1
Second function calculates and caches the inverse of the matrix created in the first function. If the inverse for the object was already calculated, it will return the cached inverse. Examples are shown below:
> b<-makeCacheMatrix()
> b$set(matrix(c(1,2,3,4),2,2))
> cacheSolve(b)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> cacheSolve(a)
getting cached data
     [,1] [,2] [,3]
[1,]    7   -3   -3
[2,]   -1    1    0
[3,]   -1    0    1
