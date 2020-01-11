
makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
#
cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}

###############################################

## Here an overall description of what the functions do: 
## 1 - create a function that will set and get the matrix, set the inverse
## and get the inverse
## 2 - see if the input matrix is already exist if don't get the matrix 
# and return inverse matrix by solve function 
 
## This Function will set, get, setinverse and getinverse

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


## This function will see if already exist the matrix and if don't 
## get, set, setinverse and getinverse. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}


#################################################


# Matrices for testing the R functions 
# makeCacheMatrix and cacheSolve
# in the Coursera R Programming Course sure to do so.
#
# A simple matrix m1 with a simple matrix inverse n1
# Define
m1 <- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
m1
        [,1]  [,2]
        [1,]  0.50 -1.00
        [2,] -0.25  0.75

# You can use m1 to test your 
# makeCacheMatrix and cacheSolve functions.
# Since the grading is done on the correctness of your 
# makeCacheMatrix and cacheSolve functions and your 
# comments on how they work, using this (or some other)   
# test matrix to check your code 
# before submitting it 
# is OK relative to the Coursera Honor Code.
# (Checking code with test cases is always a good idea.)
#
# m1 was constructed (using very simple linear algebra, so
# no references are given, almost surely the examples
# in this post have been given many times before) 
# to have a simple marrix inverse, call it n1.
# This means  m1 %*% n1 (%*% is matrix multiply in R) 
# is the 2 row by 2 column Identity matrix I2
I2 <- matrix(c(1,0,0,1), nrow = 2, ncol = 2)
I2
        [,1] [,2]
        [1,]    1    0
        [2,]    0    1

# And so (by linear algebra) n1 %*% m1 is also equal I2.
# (If n1 is the inverse of m1 then m1 is the inverse of n1.)
# With m1 defined as above, n1 ( the inverse of m1) is
n1 <- matrix(c(6,2,8,4), nrow = 2, ncol = 2)
n1
        [,1] [,2]
        [1,]    6    8
        [2,]    2    4

# Checks:
m1 %*% n1
        [,1] [,2]
        [1,]    1    0
        [2,]    0    1
 
n1 %*% m1
        [,1] [,2]
        [1,]    1    0
        [2,]    0    1

solve(m1)
        [,1] [,2]
        [1,]    6    8
        [2,]    2    4

solve(n1)
        [,1]  [,2]
        [1,]  0.50 -1.00
        [2,] -0.25  0.75
 
# So if you have programmed your functions 
# correctly (in the file cachematrix.R),
# (that, and your comments-explanation of how they work
# are what you are graded on)
# and sourced cachematrix.R so they are 
# available in your R session workspace, then doing 
#
myMatrix_object <- makeCacheMatrix(m1)

# and then
# cacheSolve(myMatrix_object)
 
# should return exactly the matrix n1
cacheSolve(myMatrix_object)
        [,1] [,2]
        [1,]    6    8
        [2,]    2    4

# calling cacheSolve again should retrieve (not recalculate)
# n1
cacheSolve(myMatrix_object)
getting cached data
        [,1] [,2]
        [1,]    6    8
        [2,]    2    4

# you can use the set function to "put in" a new matrix.
# For example n2

n2 <- matrix(c(5/8, -1/8, -7/8, 3/8), nrow = 2, ncol = 2)
myMatrix_object$set(n2)

# and obtain its matrix inverse by
cacheSolve(myMatrix_object)
        [,1] [,2]
        [1,]    3    7
        [2,]    1    5
 
cacheSolve(myMatrix_object)
getting cached data
        [,1] [,2]
        [1,]    3    7
        [2,]    1    5

