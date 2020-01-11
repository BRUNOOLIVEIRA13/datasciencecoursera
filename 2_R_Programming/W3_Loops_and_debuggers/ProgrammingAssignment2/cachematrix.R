## Here an overall description of what the functions do: 

## 1 step - create a function that will set and get the matrix, set the inverse 
## and get the inverse
## 2 second - see if the input matrix is already exist if don't get the matrix 
## and return inverse matrix by solve function 

## This Function will set and get "special matrix" 
## Works similar to Create Vector, but insted of get a Mean of a Vector
## We will get a inverse of a matrix with lexical scope help.
makeCacheMatrix <- function(m = matrix()) {
        inv <- NULL
        set <- function(x){
                m <<- x
                inv <<- NULL
        }
        get <- function() m
        setinverse <- function(solve) inv <<- solve
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function will see if already exist the matrix (and the matrix has
## not chagend) and the should retrive the inverse from the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        ## Just return the inverse if its already set
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        ## Get the matrix from our object, calculate, set inverse and return
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}


#################################################
## you can test using: 
## m1 <- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
## matrix_obj <- makeCacheMatrix(m1)
## cachesolve(matrix_obj)
## you can use the set function to "put in" a new matrix.
## For example m2
## m2 <- matrix(c(5/8, -1/8, -7/8, 3/8), nrow = 2, ncol = 2)
## matrix_obj$set(m2)
## and obtain its matrix inverse by
## cacheSolve(matrix_obj)
